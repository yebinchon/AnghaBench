
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ELeafType ;





 scalar_t__ malloc (int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void build_command_field(ELeafType lt, char **command_field) {
 switch (lt) {
 case 129:
 case 128:
  *command_field = (char *) malloc (strlen ("\"pf.") + 1);
  if (!(*command_field)) {
   break;
  }
  strcpy (*command_field, "\"pf.");
  break;
 case 130:
  *command_field = (char *) malloc (strlen ("\"td enum ") + 1);
  if (!(*command_field)) {
   break;
  }
  strcpy (*command_field, "\"td enum ");
  break;
 default:
  break;
 }
}
