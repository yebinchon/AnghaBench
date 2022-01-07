
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg1; } ;
typedef TYPE_1__ X509_TRUST ;
typedef int X509 ;


 int X509_TRUST_DO_SS_COMPAT ;
 int X509_TRUST_OK_ANY_EKU ;
 int obj_trust (int ,int *,int) ;

__attribute__((used)) static int trust_1oid(X509_TRUST *trust, X509 *x, int flags)
{





    flags &= ~(X509_TRUST_DO_SS_COMPAT | X509_TRUST_OK_ANY_EKU);
    return obj_trust(trust->arg1, x, flags);
}
