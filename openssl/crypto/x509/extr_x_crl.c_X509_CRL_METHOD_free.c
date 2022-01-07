
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ X509_CRL_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_CRL_METHOD_DYNAMIC ;

void X509_CRL_METHOD_free(X509_CRL_METHOD *m)
{
    if (m == ((void*)0) || !(m->flags & X509_CRL_METHOD_DYNAMIC))
        return;
    OPENSSL_free(m);
}
