
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
struct TYPE_14__ {int function_name; } ;
struct TYPE_15__ {TYPE_3__ common; } ;
typedef TYPE_4__ zend_function ;
struct TYPE_16__ {int * object; int * called_scope; TYPE_4__* function_handler; } ;
typedef TYPE_5__ zend_fcall_info_cache ;
struct TYPE_17__ {int size; int param_count; int no_separation; int function_name; int * params; int * retval; int * object; } ;
typedef TYPE_6__ zend_fcall_info ;
struct TYPE_12__ {int zresource; } ;
struct TYPE_13__ {TYPE_1__ file; } ;
struct TYPE_18__ {TYPE_2__ u; } ;
typedef TYPE_7__ spl_filesystem_object ;
typedef int fci ;


 int FAILURE ;
 int RETVAL_FALSE ;
 scalar_t__ SUCCESS ;
 int WRONG_PARAM_COUNT_WITH_RETVAL (int) ;
 int ZVAL_STR (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int ZVAL_ZVAL (int *,int *,int ,int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 int efree (int *) ;
 scalar_t__ safe_emalloc (int,int,int ) ;
 int zend_call_function (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ zend_get_parameters_array_ex (int,int *) ;

__attribute__((used)) static int spl_filesystem_file_call(spl_filesystem_object *intern, zend_function *func_ptr, int pass_num_args, zval *return_value, zval *arg2)
{
 zend_fcall_info fci;
 zend_fcall_info_cache fcic;
 zval *zresource_ptr = &intern->u.file.zresource, retval;
 int result;
 int num_args = pass_num_args + (arg2 ? 2 : 1);

 zval *params = (zval*)safe_emalloc(num_args, sizeof(zval), 0);

 params[0] = *zresource_ptr;

 if (arg2) {
  params[1] = *arg2;
 }

 if (zend_get_parameters_array_ex(pass_num_args, params + (arg2 ? 2 : 1)) != SUCCESS) {
  efree(params);
  WRONG_PARAM_COUNT_WITH_RETVAL(FAILURE);
 }

 ZVAL_UNDEF(&retval);

 fci.size = sizeof(fci);
 fci.object = ((void*)0);
 fci.retval = &retval;
 fci.param_count = num_args;
 fci.params = params;
 fci.no_separation = 1;
 ZVAL_STR(&fci.function_name, func_ptr->common.function_name);

 fcic.function_handler = func_ptr;
 fcic.called_scope = ((void*)0);
 fcic.object = ((void*)0);

 result = zend_call_function(&fci, &fcic);

 if (result == FAILURE || Z_ISUNDEF(retval)) {
  RETVAL_FALSE;
 } else {
  ZVAL_ZVAL(return_value, &retval, 0, 0);
 }

 efree(params);
 return result;
}
