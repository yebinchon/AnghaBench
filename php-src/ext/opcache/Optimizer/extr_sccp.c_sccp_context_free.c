
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ssa; TYPE_1__* op_array; } ;
struct TYPE_9__ {int * values; TYPE_3__ scdf; } ;
typedef TYPE_4__ sccp_ctx ;
struct TYPE_7__ {int vars_count; } ;
struct TYPE_6__ {int last_var; } ;


 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static void sccp_context_free(sccp_ctx *sccp) {
 int i;
 for (i = sccp->scdf.op_array->last_var; i < sccp->scdf.ssa->vars_count; ++i) {
  zval_ptr_dtor_nogc(&sccp->values[i]);
 }
}
