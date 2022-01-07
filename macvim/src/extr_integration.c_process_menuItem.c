
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOCATGETS (char*) ;
 char* strtok (char*,int ) ;
 int workshop_menu_item (char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
process_menuItem(
 char *cmd)
{
 char *label = strtok(&cmd[9], NOCATGETS("\001"));
 char *verb = strtok(((void*)0), NOCATGETS("\001"));
 char *acc = strtok(((void*)0), NOCATGETS("\001"));
 char *accText = strtok(((void*)0), NOCATGETS("\001"));
 char *name = strtok(((void*)0), NOCATGETS("\001"));
 char *sense = strtok(((void*)0), NOCATGETS("\n"));
 char *filepos = strtok(((void*)0), NOCATGETS("\n"));
 if (*acc == '-') {
  acc = ((void*)0);
 }
 if (*accText == '-') {
  accText = ((void*)0);
 }
 workshop_menu_item(label, verb, acc, accText, name, filepos, sense);

}
