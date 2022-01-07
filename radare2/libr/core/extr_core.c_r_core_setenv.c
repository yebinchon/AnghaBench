
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int R2_HOME_BIN ;
 int R_SYS_ENVSEP ;
 int free (char*) ;
 char* r_str_home (int ) ;
 char* r_str_newf (char*,char*,int ,char*) ;
 char* r_sys_getenv (char*) ;
 int r_sys_setenv (char*,char*) ;

__attribute__((used)) static void r_core_setenv (RCore *core) {
 char *e = r_sys_getenv ("PATH");
 char *h = r_str_home (R2_HOME_BIN);
 char *n = r_str_newf ("%s%s%s", h, R_SYS_ENVSEP, e);
 r_sys_setenv ("PATH", n);
 free (n);
 free (h);
 free (e);
}
