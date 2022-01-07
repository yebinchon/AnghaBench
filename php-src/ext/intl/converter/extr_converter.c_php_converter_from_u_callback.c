
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int param_count; scalar_t__ no_separation; int * retval; int * params; } ;
struct TYPE_5__ {int from_cache; TYPE_2__ from_cb; } ;
typedef TYPE_1__ php_converter_object ;
typedef int int32_t ;
typedef int UErrorCode ;
typedef int UConverterFromUnicodeArgs ;
typedef int UConverterCallbackReason ;
typedef int UChar32 ;
typedef int UChar ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_LONG ;
 int U16_NEXT (int const*,int,int,int ) ;
 int U_INTERNAL_PROGRAM_ERROR ;
 int ZVAL_LONG (int *,int ) ;
 scalar_t__ Z_ISREF (int ) ;
 int Z_ISUNDEF (int ) ;
 int Z_LVAL (int ) ;
 int Z_LVAL_P (int ) ;
 int Z_REFVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ Z_TYPE_P (int ) ;
 int add_next_index_long (int *,int ) ;
 int array_init (int *) ;
 int php_converter_append_fromUnicode_target (int *,int *,TYPE_1__*) ;
 int php_converter_throw_failure (TYPE_1__*,int ,char*) ;
 scalar_t__ zend_call_function (TYPE_2__*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_converter_from_u_callback(const void *context,
                                          UConverterFromUnicodeArgs *args,
                                          const UChar *codeUnits, int32_t length, UChar32 codePoint,
                                          UConverterCallbackReason reason,
                                          UErrorCode *pErrorCode) {
 php_converter_object *objval = (php_converter_object*)context;
 zval retval;
 zval zargs[4];
 int i;

 ZVAL_LONG(&zargs[0], reason);
 array_init(&zargs[1]);
 i = 0;
 while (i < length) {
  UChar32 c;
  U16_NEXT(codeUnits, i, length, c);
  add_next_index_long(&zargs[1], c);
 }
 ZVAL_LONG(&zargs[2], codePoint);
 ZVAL_LONG(&zargs[3], *pErrorCode);

 objval->from_cb.param_count = 4;
 objval->from_cb.params = zargs;
 objval->from_cb.retval = &retval;
 objval->from_cb.no_separation = 0;
 if (zend_call_function(&(objval->from_cb), &(objval->from_cache)) == FAILURE) {

  php_converter_throw_failure(objval, U_INTERNAL_PROGRAM_ERROR, "Unexpected failure calling fromUCallback()");
 } else if (!Z_ISUNDEF(retval)) {
  php_converter_append_fromUnicode_target(&retval, args, objval);
  zval_ptr_dtor(&retval);
 }

 if (Z_TYPE(zargs[3]) == IS_LONG) {
  *pErrorCode = Z_LVAL(zargs[3]);
 } else if (Z_ISREF(zargs[3]) && Z_TYPE_P(Z_REFVAL(zargs[3])) == IS_LONG) {
  *pErrorCode = Z_LVAL_P(Z_REFVAL(zargs[3]));
 }

 zval_ptr_dtor(&zargs[0]);
 zval_ptr_dtor(&zargs[1]);
 zval_ptr_dtor(&zargs[2]);
 zval_ptr_dtor(&zargs[3]);
}
