
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ TS_REQ ;


 void* X509V3_get_d2i (int ,int,int*,int*) ;

void *TS_REQ_get_ext_d2i(TS_REQ *a, int nid, int *crit, int *idx)
{
    return X509V3_get_d2i(a->extensions, nid, crit, idx);
}
