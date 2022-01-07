
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {TYPE_6__* function_handler; } ;
struct TYPE_9__ {TYPE_2__ fcc; int callback; } ;
typedef TYPE_3__ zend_ffi_callback_data ;
struct TYPE_7__ {int fn_flags; } ;
struct TYPE_10__ {TYPE_1__ common; } ;


 int OBJ_RELEASE (int ) ;
 int ZEND_ACC_CLOSURE ;
 int ZEND_CLOSURE_OBJECT (TYPE_6__*) ;
 TYPE_3__* Z_PTR_P (int *) ;
 int efree (TYPE_3__*) ;
 int ffi_closure_free (int ) ;

__attribute__((used)) static void zend_ffi_callback_hash_dtor(zval *zv)
{
 zend_ffi_callback_data *callback_data = Z_PTR_P(zv);

 ffi_closure_free(callback_data->callback);
 if (callback_data->fcc.function_handler->common.fn_flags & ZEND_ACC_CLOSURE) {
  OBJ_RELEASE(ZEND_CLOSURE_OBJECT(callback_data->fcc.function_handler));
 }
 efree(callback_data);
}
