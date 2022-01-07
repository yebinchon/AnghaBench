
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmd (int *,char*,int ) ;

int __rw_cb(void *user) {
 RCore *core = (RCore *)user;
 r_core_cmd (core, "oo+", 0);
 return 0;
}
