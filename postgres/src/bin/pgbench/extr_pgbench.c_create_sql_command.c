
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int stats; int * expr; int * varprefix; int argv; scalar_t__ argc; int meta; int type; int * first_line; int lines; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef TYPE_2__ Command ;


 int META_NONE ;
 int SQL_COMMAND ;
 int appendPQExpBufferStr (int *,char*) ;
 int initPQExpBuffer (int *) ;
 int initSimpleStats (int *) ;
 int memset (int ,int ,int) ;
 scalar_t__ pg_malloc (int) ;
 char* skip_sql_comments (int ) ;

__attribute__((used)) static Command *
create_sql_command(PQExpBuffer buf, const char *source)
{
 Command *my_command;
 char *p = skip_sql_comments(buf->data);

 if (p == ((void*)0))
  return ((void*)0);


 my_command = (Command *) pg_malloc(sizeof(Command));
 initPQExpBuffer(&my_command->lines);
 appendPQExpBufferStr(&my_command->lines, p);
 my_command->first_line = ((void*)0);
 my_command->type = SQL_COMMAND;
 my_command->meta = META_NONE;
 my_command->argc = 0;
 memset(my_command->argv, 0, sizeof(my_command->argv));
 my_command->varprefix = ((void*)0);
 my_command->expr = ((void*)0);
 initSimpleStats(&my_command->stats);

 return my_command;
}
