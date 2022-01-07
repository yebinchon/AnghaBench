
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {int src; } ;
typedef TYPE_1__ php_converter_object ;
typedef int int8_t ;
typedef int chars ;
typedef int UErrorCode ;


 scalar_t__ CONV_GET (int *) ;
 int RETVAL_STRINGL (char*,int) ;
 int THROW_UFAILURE (TYPE_1__*,char*,int ) ;



 int U_FAILURE (int ) ;
 int U_INVALID_STATE_ERROR ;
 int U_ZERO_ERROR ;
 int ZVAL_DEREF (int *) ;
 int ZVAL_LONG (int *,int ) ;
 int php_converter_throw_failure (TYPE_1__*,int ,char*) ;
 int ucnv_getSubstChars (int ,char*,int*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_converter_default_callback(zval *return_value, zval *zobj, zend_long reason, zval *error) {
 ZVAL_DEREF(error);
 zval_ptr_dtor(error);
 ZVAL_LONG(error, U_ZERO_ERROR);

 switch (reason) {
  case 128:
  case 130:
  case 129:
  {
   php_converter_object *objval = (php_converter_object*)CONV_GET(zobj);
   char chars[127];
   int8_t chars_len = sizeof(chars);
   UErrorCode uerror = U_ZERO_ERROR;
            if(!objval->src) {
                php_converter_throw_failure(objval, U_INVALID_STATE_ERROR, "Source Converter has not been initialized yet");
    chars[0] = 0x1A;
    chars[1] = 0;
    chars_len = 1;
                ZVAL_LONG(error, U_INVALID_STATE_ERROR);
                RETVAL_STRINGL(chars, chars_len);
                return;
            }
   ucnv_getSubstChars(objval->src, chars, &chars_len, &uerror);
   if (U_FAILURE(uerror)) {
    THROW_UFAILURE(objval, "ucnv_getSubstChars", uerror);
    chars[0] = 0x1A;
    chars[1] = 0;
    chars_len = 1;
             ZVAL_LONG(error, uerror);
   }
   RETVAL_STRINGL(chars, chars_len);
  }
 }
}
