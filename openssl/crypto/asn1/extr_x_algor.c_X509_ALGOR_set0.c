
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parameter; int * algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ASN1_TYPE_free (int *) ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set (int *,int,void*) ;
 int V_ASN1_UNDEF ;

int X509_ALGOR_set0(X509_ALGOR *alg, ASN1_OBJECT *aobj, int ptype, void *pval)
{
    if (alg == ((void*)0))
        return 0;

    if (ptype != V_ASN1_UNDEF) {
        if (alg->parameter == ((void*)0))
            alg->parameter = ASN1_TYPE_new();
        if (alg->parameter == ((void*)0))
            return 0;
    }

    ASN1_OBJECT_free(alg->algorithm);
    alg->algorithm = aobj;

    if (ptype == 0)
        return 1;
    if (ptype == V_ASN1_UNDEF) {
        ASN1_TYPE_free(alg->parameter);
        alg->parameter = ((void*)0);
    } else
        ASN1_TYPE_set(alg->parameter, ptype, pval);
    return 1;
}
