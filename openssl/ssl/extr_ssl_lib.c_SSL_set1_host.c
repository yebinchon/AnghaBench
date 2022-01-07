
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int param; } ;
typedef TYPE_1__ SSL ;


 int X509_VERIFY_PARAM_set1_host (int ,char const*,int ) ;

int SSL_set1_host(SSL *s, const char *hostname)
{
    return X509_VERIFY_PARAM_set1_host(s->param, hostname, 0);
}
