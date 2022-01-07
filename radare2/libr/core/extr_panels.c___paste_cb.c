
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmd0 (int *,char*) ;

int __paste_cb(void *user) {
 RCore *core = (RCore *)user;
 r_core_cmd0 (core, "yy");
 return 0;
}
