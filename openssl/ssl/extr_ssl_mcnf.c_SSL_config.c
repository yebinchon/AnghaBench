
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_do_config (int *,int *,char const*,int ) ;

int SSL_config(SSL *s, const char *name)
{
    return ssl_do_config(s, ((void*)0), name, 0);
}
