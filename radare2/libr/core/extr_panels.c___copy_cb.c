
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __add_cmdf_panel (int *,char*,char*) ;

int __copy_cb(void *user) {
 RCore *core = (RCore *)user;
 __add_cmdf_panel (core, "How many bytes? ", "\"y %s\"");
 return 0;
}
