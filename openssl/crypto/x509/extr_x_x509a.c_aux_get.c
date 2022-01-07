
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_CERT_AUX ;
struct TYPE_3__ {int * aux; } ;
typedef TYPE_1__ X509 ;


 int * X509_CERT_AUX_new () ;

__attribute__((used)) static X509_CERT_AUX *aux_get(X509 *x)
{
    if (x == ((void*)0))
        return ((void*)0);
    if (x->aux == ((void*)0) && (x->aux = X509_CERT_AUX_new()) == ((void*)0))
        return ((void*)0);
    return x->aux;
}
