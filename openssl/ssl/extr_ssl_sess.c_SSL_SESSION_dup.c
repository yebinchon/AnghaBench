
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;


 int * ssl_session_dup (int const*,int) ;

SSL_SESSION *SSL_SESSION_dup(const SSL_SESSION *src)
{
    return ssl_session_dup(src, 1);
}
