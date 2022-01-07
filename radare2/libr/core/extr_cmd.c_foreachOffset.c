
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int num; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 int r_cons_flush () ;
 int r_core_cmd (TYPE_1__*,char*,int ) ;
 int r_core_seek (TYPE_1__*,int ,int) ;
 int r_num_math (int ,char const*) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void foreachOffset(RCore *core, const char *_cmd, const char *each) {
 char *cmd = strdup (_cmd);
 char *nextLine = ((void*)0);
 ut64 addr;

 while (each) {

  while (*each == ' ') {
   each++;
  }

  if (!*each) {
   break;
  }

  char *nl = strchr (each, '\n');
  if (nl) {
   *nl = 0;
   nextLine = nl + 1;
  } else {
   nextLine = ((void*)0);
  }

  nl = strchr (each, '#');
  if (nl) {
   *nl = 0;
  }

  while (each && *each) {

   while (*each == ' ') {
    each++;
   }
   char *str = strchr (each, ' ');
   if (str) {
    *str = '\0';
    addr = r_num_math (core->num, each);
    *str = ' ';
    each = str + 1;
   } else {
    if (!*each) {
     break;
    }
    addr = r_num_math (core->num, each);
    each = ((void*)0);
   }
   r_core_seek (core, addr, 1);
   r_core_cmd (core, cmd, 0);
   r_cons_flush ();
  }
  each = nextLine;
 }
 free (cmd);
}
