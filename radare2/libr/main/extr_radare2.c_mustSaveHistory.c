
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RConfig ;


 int r_config_get_i (int *,char*) ;
 int r_cons_is_interactive () ;

__attribute__((used)) static bool mustSaveHistory(RConfig *c) {
 if (!r_config_get_i (c, "scr.histsave")) {
  return 0;
 }
 if (!r_cons_is_interactive ()) {
  return 0;
 }
 return 1;
}
