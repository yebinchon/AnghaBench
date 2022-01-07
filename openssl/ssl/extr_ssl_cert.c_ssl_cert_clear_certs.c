
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pkeys; } ;
struct TYPE_4__ {scalar_t__ serverinfo_length; int * serverinfo; int * chain; int * privatekey; int * x509; } ;
typedef TYPE_1__ CERT_PKEY ;
typedef TYPE_2__ CERT ;


 int EVP_PKEY_free (int *) ;
 int OPENSSL_free (int *) ;
 int SSL_PKEY_NUM ;
 int X509_free (int *) ;
 int sk_X509_pop_free (int *,int (*) (int *)) ;

void ssl_cert_clear_certs(CERT *c)
{
    int i;
    if (c == ((void*)0))
        return;
    for (i = 0; i < SSL_PKEY_NUM; i++) {
        CERT_PKEY *cpk = c->pkeys + i;
        X509_free(cpk->x509);
        cpk->x509 = ((void*)0);
        EVP_PKEY_free(cpk->privatekey);
        cpk->privatekey = ((void*)0);
        sk_X509_pop_free(cpk->chain, X509_free);
        cpk->chain = ((void*)0);
        OPENSSL_free(cpk->serverinfo);
        cpk->serverinfo = ((void*)0);
        cpk->serverinfo_length = 0;
    }
}
