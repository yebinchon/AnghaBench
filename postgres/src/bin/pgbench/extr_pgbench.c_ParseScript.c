
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int promptStatus_t ;
struct TYPE_9__ {scalar_t__ meta; scalar_t__ type; int argc; char** argv; int * varprefix; int * first_line; } ;
struct TYPE_8__ {char const* desc; int weight; TYPE_2__** commands; int stats; } ;
typedef int PsqlScanState ;
typedef scalar_t__ PsqlScanResult ;
typedef TYPE_1__ ParsedScript ;
typedef int PQExpBufferData ;
typedef TYPE_2__ Command ;


 int COMMANDS_ALLOC_NUM ;
 scalar_t__ META_GSET ;
 scalar_t__ PSCAN_BACKSLASH ;
 scalar_t__ PSCAN_EOL ;
 scalar_t__ PSCAN_INCOMPLETE ;
 scalar_t__ SQL_COMMAND ;
 int addScript (TYPE_1__) ;
 TYPE_2__* create_sql_command (int *,char const*) ;
 int expr_scanner_get_lineno (int ,int) ;
 int expr_scanner_offset (int ) ;
 int free_command (TYPE_2__*) ;
 int initPQExpBuffer (int *) ;
 int initStats (int *,int ) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (TYPE_2__**,int) ;
 void* pg_strdup (char*) ;
 int pgbench_callbacks ;
 TYPE_2__* process_backslash_command (int ,char const*) ;
 scalar_t__ psql_scan (int ,int *,int *) ;
 int psql_scan_create (int *) ;
 int psql_scan_destroy (int ) ;
 int psql_scan_finish (int ) ;
 int psql_scan_setup (int ,char const*,int ,int ,int) ;
 int resetPQExpBuffer (int *) ;
 int strlen (char const*) ;
 int syntax_error (char const*,int,int *,int *,char*,int *,int) ;
 int termPQExpBuffer (int *) ;

__attribute__((used)) static void
ParseScript(const char *script, const char *desc, int weight)
{
 ParsedScript ps;
 PsqlScanState sstate;
 PQExpBufferData line_buf;
 int alloc_num;
 int index;
 int lineno;
 int start_offset;


 alloc_num = 128;


 ps.desc = desc;
 ps.weight = weight;
 ps.commands = (Command **) pg_malloc(sizeof(Command *) * alloc_num);
 initStats(&ps.stats, 0);


 sstate = psql_scan_create(&pgbench_callbacks);
 psql_scan_setup(sstate, script, strlen(script), 0, 1);
 start_offset = expr_scanner_offset(sstate) - 1;

 initPQExpBuffer(&line_buf);

 index = 0;

 for (;;)
 {
  PsqlScanResult sr;
  promptStatus_t prompt;
  Command *command = ((void*)0);

  resetPQExpBuffer(&line_buf);
  lineno = expr_scanner_get_lineno(sstate, start_offset);

  sr = psql_scan(sstate, &line_buf, &prompt);


  command = create_sql_command(&line_buf, desc);


  if (command)
   ps.commands[index++] = command;


  if (sr == PSCAN_BACKSLASH)
  {
   command = process_backslash_command(sstate, desc);

   if (command)
   {




    if (command->meta == META_GSET)
    {
     Command *cmd;

     if (index == 0)
      syntax_error(desc, lineno, ((void*)0), ((void*)0),
          "\\gset must follow a SQL command",
          ((void*)0), -1);

     cmd = ps.commands[index - 1];

     if (cmd->type != SQL_COMMAND ||
      cmd->varprefix != ((void*)0))
      syntax_error(desc, lineno, ((void*)0), ((void*)0),
          "\\gset must follow a SQL command",
          cmd->first_line, -1);


     if (command->argc <= 1 || command->argv[1][0] == '\0')
      cmd->varprefix = pg_strdup("");
     else
      cmd->varprefix = pg_strdup(command->argv[1]);


     free_command(command);

     continue;
    }


    ps.commands[index++] = command;
   }
  }






  if (index >= alloc_num)
  {
   alloc_num += 128;
   ps.commands = (Command **)
    pg_realloc(ps.commands, sizeof(Command *) * alloc_num);
  }


  if (sr == PSCAN_INCOMPLETE || sr == PSCAN_EOL)
   break;
 }

 ps.commands[index] = ((void*)0);

 addScript(ps);

 termPQExpBuffer(&line_buf);
 psql_scan_finish(sstate);
 psql_scan_destroy(sstate);
}
