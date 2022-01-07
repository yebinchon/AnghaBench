
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __set_refresh_all (int *,int,int) ;
 int r_core_cmdf (int *,char*) ;

int __calls_cb(void *user) {
 RCore *core = (RCore *)user;
 r_core_cmdf (core, "aac");
 __set_refresh_all (core, 0, 0);
 return 0;
}
