
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_flush () ;
 int r_cons_set_raw (int ) ;
 int r_sys_cmd (char*) ;

int __system_shell_cb(void *user) {
 r_cons_set_raw (0);
 r_cons_flush ();
 r_sys_cmd ("$SHELL");
 return 0;
}
