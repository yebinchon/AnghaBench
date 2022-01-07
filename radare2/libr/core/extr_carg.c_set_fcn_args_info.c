
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * sdb_types; } ;
struct TYPE_6__ {int size; int cc_source; scalar_t__ c_type; int fmt; scalar_t__ orig_c_type; int name; } ;
typedef int Sdb ;
typedef TYPE_1__ RAnalFuncArg ;
typedef TYPE_2__ RAnal ;


 int eprintf (char*,char const*) ;
 int r_anal_cc_arg (TYPE_2__*,char const*,int) ;
 int r_type_func_args_name (int *,char const*,int) ;
 scalar_t__ r_type_func_args_type (int *,char const*,int) ;
 int sdb_const_get (int *,char const*,int ) ;
 char* sdb_fmt (char*,scalar_t__) ;
 int sdb_num_get (int *,char const*,int ) ;
 int strncmp (char*,scalar_t__,int) ;

__attribute__((used)) static void set_fcn_args_info(RAnalFuncArg *arg, RAnal *anal, const char *fcn_name, const char *cc, int arg_num) {
 if (!fcn_name || !arg || !anal) {
  return;
 }
 Sdb *TDB = anal->sdb_types;
 arg->name = r_type_func_args_name (TDB, fcn_name, arg_num);
 arg->orig_c_type = r_type_func_args_type (TDB, fcn_name, arg_num);
 if (!arg->name || !arg->orig_c_type) {
  eprintf ("Missing type for function argument (%s)\n", fcn_name);
  return;
 }
 if (!strncmp ("const ", arg->orig_c_type, 6)) {
  arg->c_type = arg->orig_c_type + 6;
 } else {
  arg->c_type = arg->orig_c_type;
 }
 const char *query = sdb_fmt ("type.%s", arg->c_type);
 arg->fmt = sdb_const_get (TDB, query, 0);
 const char *t_query = sdb_fmt ("type.%s.size", arg->c_type);
 arg->size = sdb_num_get (TDB, t_query, 0) / 8;
 arg->cc_source = r_anal_cc_arg (anal, cc, arg_num);
}
