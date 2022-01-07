
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int R2_FORTUNES ;
 int R_JOIN_3_PATHS (char*,int ,char*) ;
 char* r_str_newf (int ,int ,char const*) ;
 int r_sys_prefix (int *) ;

__attribute__((used)) static char *getFortuneFile(RCore *core, const char *type) {
 return r_str_newf (R_JOIN_3_PATHS ("%s", R2_FORTUNES, "fortunes.%s"),
  r_sys_prefix (((void*)0)), type);
}
