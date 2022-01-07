
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * policies; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;
typedef int ASN1_OBJECT ;


 int * sk_ASN1_OBJECT_new_null () ;
 int sk_ASN1_OBJECT_push (int *,int *) ;

int X509_VERIFY_PARAM_add0_policy(X509_VERIFY_PARAM *param,
                                  ASN1_OBJECT *policy)
{
    if (param->policies == ((void*)0)) {
        param->policies = sk_ASN1_OBJECT_new_null();
        if (param->policies == ((void*)0))
            return 0;
    }
    if (!sk_ASN1_OBJECT_push(param->policies, policy))
        return 0;
    return 1;
}
