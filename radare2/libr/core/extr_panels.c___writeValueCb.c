
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 char* __show_status_input (int *,char*) ;
 int free (char*) ;
 int r_core_cmdf (int *,char*,char*) ;

int __writeValueCb(void *user) {
 RCore *core = (RCore *)user;
 char *res = __show_status_input (core, "insert number: ");
 if (res) {
  r_core_cmdf (core, "\"wv %s\"", res);
  free (res);
 }
 return 0;
}
