
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_12__ {scalar_t__ min; scalar_t__ max; int underflow; int overflow; } ;
struct TYPE_13__ {int type; TYPE_4__ range; scalar_t__ has_range; } ;
typedef TYPE_5__ zend_ssa_var_info ;
struct TYPE_14__ {TYPE_1__* vars; TYPE_5__* var_info; } ;
typedef TYPE_6__ zend_ssa ;
struct TYPE_11__ {TYPE_2__* op_array; TYPE_6__* ssa; } ;
struct TYPE_15__ {TYPE_3__ scdf; } ;
typedef TYPE_7__ sccp_ctx ;
struct TYPE_10__ {scalar_t__ last_var; } ;
struct TYPE_9__ {scalar_t__ var; } ;


 int MAY_BE_ANY ;
 int MAY_BE_FALSE ;
 int MAY_BE_LONG ;
 int MAY_BE_NULL ;
 int MAY_BE_TRUE ;
 int MAY_BE_UNDEF ;
 int ZVAL_FALSE (int *) ;
 int ZVAL_LONG (int *,scalar_t__) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_TRUE (int *) ;

__attribute__((used)) static zval *value_from_type_and_range(sccp_ctx *ctx, int var_num, zval *tmp) {
 zend_ssa *ssa = ctx->scdf.ssa;
 zend_ssa_var_info *info = &ssa->var_info[var_num];

 if (ssa->vars[var_num].var >= ctx->scdf.op_array->last_var) {

  return ((void*)0);
 }

 if (info->type & MAY_BE_UNDEF) {
  return ((void*)0);
 }

 if (!(info->type & ((MAY_BE_ANY|MAY_BE_UNDEF)-MAY_BE_NULL))) {
  ZVAL_NULL(tmp);
  return tmp;
 }
 if (!(info->type & ((MAY_BE_ANY|MAY_BE_UNDEF)-MAY_BE_FALSE))) {
  ZVAL_FALSE(tmp);
  return tmp;
 }
 if (!(info->type & ((MAY_BE_ANY|MAY_BE_UNDEF)-MAY_BE_TRUE))) {
  ZVAL_TRUE(tmp);
  return tmp;
 }

 if (!(info->type & ((MAY_BE_ANY|MAY_BE_UNDEF)-MAY_BE_LONG))
   && info->has_range
   && !info->range.overflow && !info->range.underflow
   && info->range.min == info->range.max) {
  ZVAL_LONG(tmp, info->range.min);
  return tmp;
 }

 return ((void*)0);
}
