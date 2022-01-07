
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int release; int sysname; } ;
typedef TYPE_1__ RSysInfo ;


 int r_cons_newline () ;
 int r_cons_printf (char*,int ) ;
 TYPE_1__* r_sys_info () ;
 int r_sys_info_free (TYPE_1__*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int cmd_uname(void *data, const char *input) {
 RSysInfo *si = r_sys_info();
 if (si) {
  r_cons_printf ("%s", si->sysname);
  if (strstr (input, "-r")) {
   r_cons_printf (" %s", si->release);
  }
  r_cons_newline ();
  r_sys_info_free (si);
 }
 return 0;
}
