
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dane; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int SSL_DANE ;



void X509_STORE_CTX_set0_dane(X509_STORE_CTX *ctx, SSL_DANE *dane)
{
    ctx->dane = dane;
}
