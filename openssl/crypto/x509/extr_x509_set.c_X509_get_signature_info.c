
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int siginf; } ;
typedef TYPE_1__ X509 ;


 int X509_SIG_INFO_get (int *,int*,int*,int*,int *) ;
 int X509_check_purpose (TYPE_1__*,int,int) ;

int X509_get_signature_info(X509 *x, int *mdnid, int *pknid, int *secbits,
                            uint32_t *flags)
{
    X509_check_purpose(x, -1, -1);
    return X509_SIG_INFO_get(&x->siginf, mdnid, pknid, secbits, flags);
}
