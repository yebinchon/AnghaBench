
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int (* param_encode ) (TYPE_2__ const*,unsigned char**) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int ASN1_F_I2D_KEYPARAMS ;
 int ASN1_R_UNSUPPORTED_TYPE ;
 int ASN1err (int ,int ) ;
 int stub1 (TYPE_2__ const*,unsigned char**) ;

int i2d_KeyParams(const EVP_PKEY *a, unsigned char **pp)
{
    if (a->ameth != ((void*)0) && a->ameth->param_encode != ((void*)0))
        return a->ameth->param_encode(a, pp);
    ASN1err(ASN1_F_I2D_KEYPARAMS, ASN1_R_UNSUPPORTED_TYPE);
    return -1;
}
