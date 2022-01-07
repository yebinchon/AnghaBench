
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int param_count; int * params; int * retval; } ;
struct TYPE_4__ {int fci_cache; TYPE_2__ fci; } ;
typedef TYPE_1__ enumCharType_data ;
typedef int UCharCategory ;
typedef int UChar32 ;
typedef int UBool ;


 scalar_t__ FAILURE ;
 int U_INTERNAL_PROGRAM_ERROR ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int intl_error_set_code (int *,int ) ;
 int intl_errors_set_custom_msg (int *,char*,int ) ;
 scalar_t__ zend_call_function (TYPE_2__*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static UBool enumCharType_callback(enumCharType_data *context,
                                   UChar32 start, UChar32 limit,
                                   UCharCategory type) {
 zval retval;
 zval args[3];

 ZVAL_NULL(&retval);



 ZVAL_LONG(&args[0], start);
 ZVAL_LONG(&args[1], limit);
 ZVAL_LONG(&args[2], type);

 context->fci.retval = &retval;
 context->fci.param_count = 3;
 context->fci.params = args;

 if (zend_call_function(&context->fci, &context->fci_cache) == FAILURE) {
  intl_error_set_code(((void*)0), U_INTERNAL_PROGRAM_ERROR);
  intl_errors_set_custom_msg(((void*)0), "enumCharTypes callback failed", 0);
  zval_ptr_dtor(&retval);
  return 0;
 }
 zval_ptr_dtor(&retval);
 return 1;
}
