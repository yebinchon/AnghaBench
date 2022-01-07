
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM_BLD ;


 int memset (int *,int ,int) ;

void ossl_param_bld_init(OSSL_PARAM_BLD *bld)
{
    memset(bld, 0, sizeof(*bld));
}
