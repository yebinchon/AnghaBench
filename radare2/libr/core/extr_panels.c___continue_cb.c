
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_cons_flush () ;
 int r_core_cmd (int *,char*,int ) ;

int __continue_cb(void *user) {
 RCore *core = (RCore *)user;
 r_core_cmd (core, "dc", 0);
 r_cons_flush ();
 return 0;
}
