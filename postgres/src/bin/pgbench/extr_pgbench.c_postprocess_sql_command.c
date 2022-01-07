
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {scalar_t__ type; int argc; TYPE_1__ lines; int * argv; int first_line; } ;
typedef TYPE_2__ Command ;


 int Assert (int) ;



 scalar_t__ SQL_COMMAND ;
 int exit (int) ;
 int parseQuery (TYPE_2__*) ;
 int pg_strdup (char*) ;
 int querymode ;
 size_t strcspn (char*,char*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static void
postprocess_sql_command(Command *my_command)
{
 char buffer[128];

 Assert(my_command->type == SQL_COMMAND);


 strlcpy(buffer, my_command->lines.data, sizeof(buffer));
 buffer[strcspn(buffer, "\n\r")] = '\0';
 my_command->first_line = pg_strdup(buffer);


 switch (querymode)
 {
  case 128:
   my_command->argv[0] = my_command->lines.data;
   my_command->argc++;
   break;
  case 130:
  case 129:
   if (!parseQuery(my_command))
    exit(1);
   break;
  default:
   exit(1);
 }
}
