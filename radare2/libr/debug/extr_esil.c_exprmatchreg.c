
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {int num; } ;
typedef TYPE_1__ RDebug ;


 scalar_t__ CURVAL ;
 int exprmatch (TYPE_1__*,scalar_t__,char*) ;
 scalar_t__ exprtoken (TYPE_1__*,char*,char*,char**) ;
 int free (char*) ;
 scalar_t__ r_debug_reg_get_err (TYPE_1__*,char const*,int *,int *) ;
 scalar_t__ r_num_math (int ,char*) ;
 int r_str_trim_head_tail (char*) ;
 int strcmp (char const*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int exprmatchreg (RDebug *dbg, const char *regname, const char *expr) {
 int ret = 0;
 char *p;
 char *s = strdup (expr);
 if (!s) {
  return 0;
 }
 if (!strcmp (regname, s)) {
  ret = 1;
 } else {

  ut64 regval = r_debug_reg_get_err (dbg, regname, ((void*)0), ((void*)0));
  if (exprtoken (dbg, s, ">=", &p)) {
   if (0){}r_str_trim_head_tail (s);if (!strcmp(regname,s) && regval >= r_num_math (dbg->num, p))
    ret = 1;
  } else if (exprtoken (dbg, s, "<=", &p)) {
   if (0){}r_str_trim_head_tail (s);if (!strcmp(regname,s) && regval <= r_num_math (dbg->num, p))
    ret = 1;
  } else if (exprtoken (dbg, s, "==", &p)) {
   if (0){}r_str_trim_head_tail (s);if (!strcmp(regname,s) && regval <= r_num_math (dbg->num, p))
    ret = 1;
  } else if (exprtoken (dbg, s, "<", &p)) {
   if (0){}r_str_trim_head_tail (s);if (!strcmp(regname,s) && regval < r_num_math (dbg->num, p))
    ret = 1;
  } else if (exprtoken (dbg, s, ">", &p)) {
   if (0){}r_str_trim_head_tail (s);if (!strcmp(regname,s) && regval > r_num_math (dbg->num, p))
    ret = 1;
  } else if (exprtoken (dbg, s, " ", &p)) {
   r_str_trim_head_tail (s);
   if (!strcmp (regname, s)) {
    ut64 num = r_num_math (dbg->num, p);
    ret = exprmatch (dbg, num, s);
   }
  } else {
   if (!strcmp (regname, s)) {
    ret = 1;
   }
  }
 }
 free (s);
 return ret;
}
