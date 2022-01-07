
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argc; struct TYPE_4__* varprefix; struct TYPE_4__** argv; struct TYPE_4__* first_line; int lines; } ;
typedef TYPE_1__ Command ;


 int pg_free (TYPE_1__*) ;
 int termPQExpBuffer (int *) ;

__attribute__((used)) static void
free_command(Command *command)
{
 termPQExpBuffer(&command->lines);
 if (command->first_line)
  pg_free(command->first_line);
 for (int i = 0; i < command->argc; i++)
  pg_free(command->argv[i]);
 if (command->varprefix)
  pg_free(command->varprefix);





 pg_free(command);
}
