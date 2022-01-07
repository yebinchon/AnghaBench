
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {int param_count; scalar_t__ no_separation; int * retval; int * params; } ;
struct TYPE_8__ {int to_cache; TYPE_3__ to_cb; } ;
typedef TYPE_1__ php_converter_object ;
typedef char const* int32_t ;
typedef int UErrorCode ;
struct TYPE_9__ {char const* source; char const* sourceLimit; } ;
typedef TYPE_2__ UConverterToUnicodeArgs ;
typedef int UConverterCallbackReason ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_LONG ;
 int U_INTERNAL_PROGRAM_ERROR ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_STRINGL (int *,char const*,char const*) ;
 scalar_t__ Z_ISREF (int ) ;
 int Z_ISUNDEF (int ) ;
 int Z_LVAL (int ) ;
 int Z_LVAL_P (int ) ;
 int Z_REFVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ Z_TYPE_P (int ) ;
 int php_converter_append_toUnicode_target (int *,TYPE_2__*,TYPE_1__*) ;
 int php_converter_throw_failure (TYPE_1__*,int ,char*) ;
 scalar_t__ zend_call_function (TYPE_3__*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_converter_to_u_callback(const void *context,
                                        UConverterToUnicodeArgs *args,
                                        const char *codeUnits, int32_t length,
                                        UConverterCallbackReason reason,
                                        UErrorCode *pErrorCode) {
 php_converter_object *objval = (php_converter_object*)context;
 zval retval;
 zval zargs[4];

 ZVAL_LONG(&zargs[0], reason);
 if (args->source) {
  ZVAL_STRINGL(&zargs[1], args->source, args->sourceLimit - args->source);
 } else {
  ZVAL_EMPTY_STRING(&zargs[1]);
 }
 if (codeUnits) {
  ZVAL_STRINGL(&zargs[2], codeUnits, length);
 } else {
  ZVAL_EMPTY_STRING(&zargs[2]);
 }
 ZVAL_LONG(&zargs[3], *pErrorCode);

 objval->to_cb.param_count = 4;
 objval->to_cb.params = zargs;
 objval->to_cb.retval = &retval;
 objval->to_cb.no_separation = 0;
 if (zend_call_function(&(objval->to_cb), &(objval->to_cache)) == FAILURE) {

  php_converter_throw_failure(objval, U_INTERNAL_PROGRAM_ERROR, "Unexpected failure calling toUCallback()");
 } else if (!Z_ISUNDEF(retval)) {
  php_converter_append_toUnicode_target(&retval, args, objval);
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
