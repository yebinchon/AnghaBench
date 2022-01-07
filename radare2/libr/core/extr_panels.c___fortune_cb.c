
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int free (char*) ;
 int r_cons_message (char*) ;
 char* r_core_cmd_str (int *,char*) ;

int __fortune_cb(void *user) {
 RCore *core = (RCore *)user;
 char *s = r_core_cmd_str (core, "fo");
 r_cons_message (s);
 free (s);
 return 0;
}
