
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crl; int x509; } ;
struct TYPE_5__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ X509_OBJECT ;


 int X509_CRL_free (int ) ;



 int X509_free (int ) ;

__attribute__((used)) static void x509_object_free_internal(X509_OBJECT *a)
{
    if (a == ((void*)0))
        return;
    switch (a->type) {
    case 129:
        break;
    case 128:
        X509_free(a->data.x509);
        break;
    case 130:
        X509_CRL_free(a->data.crl);
        break;
    }
}
