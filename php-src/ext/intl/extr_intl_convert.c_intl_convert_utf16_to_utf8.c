
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef size_t int32_t ;
typedef scalar_t__ UErrorCode ;
typedef int UChar ;


 scalar_t__ U_BUFFER_OVERFLOW_ERROR ;
 scalar_t__ U_FAILURE (scalar_t__) ;
 scalar_t__ U_STRING_NOT_TERMINATED_WARNING ;
 scalar_t__ U_ZERO_ERROR ;
 scalar_t__* ZSTR_VAL (int *) ;
 int u_strToUTF8 (scalar_t__*,size_t,size_t*,int const*,size_t,scalar_t__*) ;
 int * zend_string_alloc (size_t,int ) ;
 int zend_string_efree (int *) ;

zend_string* intl_convert_utf16_to_utf8(
 const UChar* src, int32_t src_len,
 UErrorCode* status )
{
 zend_string* dst;
 int32_t dst_len;


 *status = U_ZERO_ERROR;
 u_strToUTF8( ((void*)0), 0, &dst_len, src, src_len, status );





 if( *status != U_BUFFER_OVERFLOW_ERROR && *status != U_STRING_NOT_TERMINATED_WARNING )
  return ((void*)0);


 dst = zend_string_alloc(dst_len, 0);


 *status = U_ZERO_ERROR;
 u_strToUTF8( ZSTR_VAL(dst), dst_len, ((void*)0), src, src_len, status );
 if( U_FAILURE( *status ) )
 {
  zend_string_efree(dst);
  return ((void*)0);
 }


 *status = U_ZERO_ERROR;

 ZSTR_VAL(dst)[dst_len] = 0;
 return dst;
}
