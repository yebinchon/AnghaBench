
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __esil_init (int *) ;
 int __set_refresh_all (int *,int,int) ;

int __esil_init_cb(void *user) {
 RCore *core = (RCore *)user;
 __esil_init (core);
 __set_refresh_all (core, 0, 0);
 return 0;
}
