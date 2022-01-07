
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int SSL_F_SSL_UNDEFINED_VOID_FUNCTION ;
 int SSLerr (int ,int ) ;

int ssl_undefined_void_function(void)
{
    SSLerr(SSL_F_SSL_UNDEFINED_VOID_FUNCTION,
           ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
    return 0;
}
