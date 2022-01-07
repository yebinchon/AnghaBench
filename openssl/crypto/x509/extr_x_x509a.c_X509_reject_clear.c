
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* aux; } ;
typedef TYPE_2__ X509 ;
struct TYPE_4__ {int * reject; } ;


 int ASN1_OBJECT_free ;
 int sk_ASN1_OBJECT_pop_free (int *,int ) ;

void X509_reject_clear(X509 *x)
{
    if (x->aux) {
        sk_ASN1_OBJECT_pop_free(x->aux->reject, ASN1_OBJECT_free);
        x->aux->reject = ((void*)0);
    }
}
