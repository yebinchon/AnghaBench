
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extensions; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 void* X509V3_get_d2i (int ,int,int*,int*) ;

void *X509_get_ext_d2i(const X509 *x, int nid, int *crit, int *idx)
{
    return X509V3_get_d2i(x->cert_info.extensions, nid, crit, idx);
}
