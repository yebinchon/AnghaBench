
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_VERIFY_PARAM ;
struct TYPE_3__ {int * param; } ;
typedef TYPE_1__ SSL ;



X509_VERIFY_PARAM *SSL_get0_param(SSL *ssl)
{
    return ssl->param;
}
