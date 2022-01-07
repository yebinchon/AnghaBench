
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ERROR_SSL ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_get_error (int *,int) ;

__attribute__((used)) static int is_retryable(SSL *con, int i)
{
    int err = SSL_get_error(con, i);


    return (err != SSL_ERROR_SSL)
           && (err != SSL_ERROR_SYSCALL)
           && (err != SSL_ERROR_ZERO_RETURN);
}
