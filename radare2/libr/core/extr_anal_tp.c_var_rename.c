
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {char const* name; int kind; } ;
typedef TYPE_1__ RAnalVar ;
typedef TYPE_2__ RAnalFunction ;
typedef int RAnal ;


 int ARGPREFIX ;
 int VARPREFIX ;
 TYPE_2__* r_anal_get_fcn_in (int *,int ,int ) ;
 int r_anal_var_rename (int *,int ,int,int ,char const*,char const*,int) ;
 scalar_t__ r_str_startswith (char const*,int ) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void var_rename(RAnal *anal, RAnalVar *v, const char *name, ut64 addr) {
 if (!name || !v) {
  return;
 }
 if (!*name || !strcmp (name , "...")) {
  return;
 }
 bool is_default = (r_str_startswith (v->name, VARPREFIX)
   || r_str_startswith (v->name, ARGPREFIX))? 1: 0;
 if (*name == '*') {
  name++;
 }

 if (!is_default && (strlen (v->name) > strlen (name))) {
  return;
 }
 RAnalFunction *fcn = r_anal_get_fcn_in (anal, addr, 0);
 if (!fcn) {
  return;
 }
 r_anal_var_rename (anal, fcn->addr, 1, v->kind, v->name, name, 0);
}
