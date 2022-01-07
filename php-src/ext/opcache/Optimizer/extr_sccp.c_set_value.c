
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {TYPE_2__* ssa; int op_array; } ;
typedef TYPE_3__ scdf_ctx ;
struct TYPE_11__ {int * values; } ;
typedef TYPE_4__ sccp_ctx ;
struct TYPE_9__ {TYPE_1__* vars; } ;
struct TYPE_8__ {int var; } ;


 scalar_t__ IS_BOT (int *) ;
 int IS_CV ;
 scalar_t__ IS_PARTIAL_ARRAY (int *) ;
 scalar_t__ IS_PARTIAL_OBJECT (int *) ;
 scalar_t__ IS_TOP (int *) ;
 int ZEND_ASSERT (int ) ;
 int ZVAL_COPY (int *,int *) ;
 int Z_ARR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int fprintf (int ,char*,...) ;
 int scdf_add_to_worklist (TYPE_3__*,int) ;
 int scp_dump_value (int *) ;
 int stderr ;
 int zend_dump_var (int ,int ,int ) ;
 scalar_t__ zend_hash_num_elements (int ) ;
 int zend_is_identical (int *,int *) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static void set_value(scdf_ctx *scdf, sccp_ctx *ctx, int var, zval *new) {
 zval *value = &ctx->values[var];
 if (IS_BOT(value) || IS_TOP(new)) {
  return;
 }
 if (IS_TOP(value) || IS_BOT(new)) {
  zval_ptr_dtor_nogc(value);
  ZVAL_COPY(value, new);
  scdf_add_to_worklist(scdf, var);
  return;
 }


 if (IS_PARTIAL_ARRAY(new) || IS_PARTIAL_OBJECT(new)) {
  if (Z_TYPE_P(value) != Z_TYPE_P(new)
   || zend_hash_num_elements(Z_ARR_P(new)) != zend_hash_num_elements(Z_ARR_P(value))) {
   zval_ptr_dtor_nogc(value);
   ZVAL_COPY(value, new);
   scdf_add_to_worklist(scdf, var);
  }
  return;
 }




}
