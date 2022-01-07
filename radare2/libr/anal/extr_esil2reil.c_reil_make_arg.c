
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int type; scalar_t__ size; } ;
typedef int RAnalReilArgType ;
typedef TYPE_1__ RAnalReilArg ;
typedef int RAnalEsil ;


 int r_str_ncpy (int ,char*,int) ;
 int reil_get_arg_type (int *,char*) ;

void reil_make_arg(RAnalEsil *esil, RAnalReilArg *arg, char *name) {
 if (!arg) {
  return;
 }
 RAnalReilArgType type = reil_get_arg_type (esil, name);
 arg->size = 0;
 arg->type = type;
 r_str_ncpy (arg->name, name, sizeof (arg->name) - 1);
}
