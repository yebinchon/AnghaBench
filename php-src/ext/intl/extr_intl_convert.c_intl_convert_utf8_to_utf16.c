
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;
typedef scalar_t__ UErrorCode ;
typedef scalar_t__ UChar ;


 size_t INT32_MAX ;
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ;
 scalar_t__ U_FAILURE (scalar_t__) ;
 scalar_t__ U_STRING_NOT_TERMINATED_WARNING ;
 scalar_t__ U_ZERO_ERROR ;
 int efree (scalar_t__*) ;
 scalar_t__* eumalloc (size_t) ;
 int u_strFromUTF8 (scalar_t__*,size_t,size_t*,char const*,size_t,scalar_t__*) ;

void intl_convert_utf8_to_utf16(
 UChar** target, int32_t* target_len,
 const char* src, size_t src_len,
 UErrorCode* status )
{
 UChar* dst_buf = ((void*)0);
 int32_t dst_len = 0;





 *status = U_ZERO_ERROR;

 if(src_len > INT32_MAX) {

  *status = U_BUFFER_OVERFLOW_ERROR;
  return;
 }

 u_strFromUTF8( *target, *target_len, &dst_len, src, (int32_t)src_len, status );

 if( *status == U_ZERO_ERROR )
 {

  (*target)[dst_len] = 0;
  *target_len = dst_len;
  return;
 }





 if( *status != U_BUFFER_OVERFLOW_ERROR && *status != U_STRING_NOT_TERMINATED_WARNING )
  return;


 dst_buf = eumalloc( dst_len + 1 );


 *status = U_ZERO_ERROR;
 u_strFromUTF8( dst_buf, dst_len+1, ((void*)0), src, src_len, status );
 if( U_FAILURE( *status ) )
 {
  efree( dst_buf );
  return;
 }

 dst_buf[dst_len] = 0;

 if( *target )
  efree( *target );

 *target = dst_buf;
 *target_len = dst_len;
}
