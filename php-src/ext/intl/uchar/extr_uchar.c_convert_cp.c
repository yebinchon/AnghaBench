
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_long ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ UChar32 ;


 int FAILURE ;
 scalar_t__ IS_LONG ;
 scalar_t__ IS_STRING ;
 int SUCCESS ;
 int U8_NEXT (int ,scalar_t__,size_t,scalar_t__) ;
 scalar_t__ UCHAR_MAX_VALUE ;
 scalar_t__ UCHAR_MIN_VALUE ;
 int U_ILLEGAL_ARGUMENT_ERROR ;
 scalar_t__ ZEND_SIZE_T_INT_OVFL (size_t) ;
 scalar_t__ Z_LVAL_P (int *) ;
 size_t Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int intl_error_set_code (int *,int ) ;
 int intl_error_set_custom_msg (int *,char*,int ) ;

__attribute__((used)) static inline int convert_cp(UChar32* pcp, zval *zcp) {
 zend_long cp = -1;

 if (Z_TYPE_P(zcp) == IS_LONG) {
  cp = Z_LVAL_P(zcp);
 } else if (Z_TYPE_P(zcp) == IS_STRING) {
  int32_t i = 0;
  size_t zcp_len = Z_STRLEN_P(zcp);

  if (ZEND_SIZE_T_INT_OVFL(zcp_len)) {
   intl_error_set_code(((void*)0), U_ILLEGAL_ARGUMENT_ERROR);
   intl_error_set_custom_msg(((void*)0), "Input string is too long.", 0);
   return FAILURE;
  }

  U8_NEXT(Z_STRVAL_P(zcp), i, zcp_len, cp);
  if ((size_t)i != zcp_len) {
   intl_error_set_code(((void*)0), U_ILLEGAL_ARGUMENT_ERROR);
   intl_error_set_custom_msg(((void*)0), "Passing a UTF-8 character for codepoint requires a string which is exactly one UTF-8 codepoint long.", 0);
   return FAILURE;
  }
 } else {
  intl_error_set_code(((void*)0), U_ILLEGAL_ARGUMENT_ERROR);
  intl_error_set_custom_msg(((void*)0), "Invalid parameter for unicode point.  Must be either integer or UTF-8 sequence.", 0);
  return FAILURE;
 }
 if ((cp < UCHAR_MIN_VALUE) || (cp > UCHAR_MAX_VALUE)) {
  intl_error_set_code(((void*)0), U_ILLEGAL_ARGUMENT_ERROR);
  intl_error_set_custom_msg(((void*)0), "Codepoint out of range", 0);
  return FAILURE;
 }
 *pcp = (UChar32)cp;
 return SUCCESS;
}
