
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int param; } ;
typedef TYPE_1__ SSL ;


 char const* X509_VERIFY_PARAM_get0_peername (int ) ;

const char *SSL_get0_peername(SSL *s)
{
    return X509_VERIFY_PARAM_get0_peername(s->param);
}
