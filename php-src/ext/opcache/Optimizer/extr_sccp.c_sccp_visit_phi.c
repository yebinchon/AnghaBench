
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zval ;
struct TYPE_15__ {size_t ssa_var; size_t block; scalar_t__ pi; size_t* sources; } ;
typedef TYPE_3__ zend_ssa_phi ;
struct TYPE_13__ {int* predecessors; TYPE_5__* blocks; } ;
struct TYPE_16__ {TYPE_2__* vars; TYPE_1__ cfg; } ;
typedef TYPE_4__ zend_ssa ;
struct TYPE_17__ {size_t predecessor_offset; int predecessors_count; } ;
typedef TYPE_5__ zend_basic_block ;
struct TYPE_18__ {TYPE_4__* ssa; } ;
typedef TYPE_6__ scdf_ctx ;
struct TYPE_19__ {int * values; } ;
typedef TYPE_7__ sccp_ctx ;
struct TYPE_14__ {scalar_t__ escape_state; } ;


 scalar_t__ ESCAPE_STATE_NO_ESCAPE ;
 int IS_BOT (int *) ;
 int MAKE_TOP (int *) ;
 int ZEND_ASSERT (int) ;
 int fprintf (int ,char*) ;
 int join_phi_values (int *,int *,int) ;
 scalar_t__ scdf_is_edge_feasible (TYPE_6__*,int,size_t) ;
 int scp_dump_value (int *) ;
 int set_value (TYPE_6__*,TYPE_7__*,size_t,int *) ;
 int stderr ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static void sccp_visit_phi(scdf_ctx *scdf, zend_ssa_phi *phi) {
 sccp_ctx *ctx = (sccp_ctx *) scdf;
 zend_ssa *ssa = scdf->ssa;
 ZEND_ASSERT(phi->ssa_var >= 0);
 if (!IS_BOT(&ctx->values[phi->ssa_var])) {
  zend_basic_block *block = &ssa->cfg.blocks[phi->block];
  int *predecessors = &ssa->cfg.predecessors[block->predecessor_offset];

  int i;
  zval result;
  MAKE_TOP(&result);



  if (phi->pi >= 0) {
   ZEND_ASSERT(phi->sources[0] >= 0);
   if (scdf_is_edge_feasible(scdf, phi->pi, phi->block)) {
    join_phi_values(&result, &ctx->values[phi->sources[0]], ssa->vars[phi->ssa_var].escape_state != ESCAPE_STATE_NO_ESCAPE);
   }
  } else {
   for (i = 0; i < block->predecessors_count; i++) {
    ZEND_ASSERT(phi->sources[i] >= 0);
    if (scdf_is_edge_feasible(scdf, predecessors[i], phi->block)) {




     join_phi_values(&result, &ctx->values[phi->sources[i]], ssa->vars[phi->ssa_var].escape_state != ESCAPE_STATE_NO_ESCAPE);
    } else {



    }
   }
  }




  set_value(scdf, ctx, phi->ssa_var, &result);
  zval_ptr_dtor_nogc(&result);
 }
}
