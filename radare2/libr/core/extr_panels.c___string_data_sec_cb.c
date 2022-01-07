
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __add_cmdf_panel (int *,char*,char*) ;

int __string_data_sec_cb(void *user) {
 RCore *core = (RCore *)user;
 __add_cmdf_panel (core, "search string in data sections: ", "izq~%s");
 return 0;
}
