
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int singleExtensions; } ;
typedef TYPE_1__ OCSP_SINGLERESP ;


 void* X509V3_get_d2i (int ,int,int*,int*) ;

void *OCSP_SINGLERESP_get1_ext_d2i(OCSP_SINGLERESP *x, int nid, int *crit,
                                   int *idx)
{
    return X509V3_get_d2i(x->singleExtensions, nid, crit, idx);
}
