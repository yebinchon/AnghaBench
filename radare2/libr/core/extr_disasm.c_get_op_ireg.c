
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {scalar_t__ ireg; } ;
typedef int RCore ;
typedef TYPE_1__ RAnalOp ;


 int r_anal_op_free (TYPE_1__*) ;
 TYPE_1__* r_core_anal_op (int *,int ,int ) ;
 char* strdup (scalar_t__) ;

__attribute__((used)) static char *get_op_ireg (void *user, ut64 addr) {
 RCore *core = (RCore *)user;
 char *res = ((void*)0);
 RAnalOp *op = r_core_anal_op (core, addr, 0);
 if (op && op->ireg) {
  res = strdup (op->ireg);
 }
 r_anal_op_free (op);
 return res;
}
