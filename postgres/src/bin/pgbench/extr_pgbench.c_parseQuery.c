
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
struct TYPE_5__ {int argc; char** argv; TYPE_1__ lines; } ;
typedef TYPE_2__ Command ;


 int Assert (int ) ;
 int MAX_ARGS ;
 int fprintf (int ,char*,int,char*) ;
 char* parseVariable (char*,int*) ;
 int pg_free (char*) ;
 char* pg_strdup (char*) ;
 char* replaceVariable (char**,char*,int,char*) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 char* strchr (char*,char) ;

__attribute__((used)) static bool
parseQuery(Command *cmd)
{
 char *sql,
      *p;

 cmd->argc = 1;

 p = sql = pg_strdup(cmd->lines.data);
 while ((p = strchr(p, ':')) != ((void*)0))
 {
  char var[13];
  char *name;
  int eaten;

  name = parseVariable(p, &eaten);
  if (name == ((void*)0))
  {
   while (*p == ':')
   {
    p++;
   }
   continue;
  }





  if (cmd->argc >= MAX_ARGS)
  {
   fprintf(stderr, "statement has too many arguments (maximum is %d): %s\n",
     MAX_ARGS - 1, cmd->lines.data);
   pg_free(name);
   return 0;
  }

  sprintf(var, "$%d", cmd->argc);
  p = replaceVariable(&sql, p, eaten, var);

  cmd->argv[cmd->argc] = name;
  cmd->argc++;
 }

 Assert(cmd->argv[0] == ((void*)0));
 cmd->argv[0] = sql;
 return 1;
}
