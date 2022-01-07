
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_get_rfd (int const*) ;

int SSL_get_fd(const SSL *s)
{
    return SSL_get_rfd(s);
}
