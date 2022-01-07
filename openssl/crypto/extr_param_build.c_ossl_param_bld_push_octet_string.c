
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* string; } ;
typedef TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef int OSSL_PARAM_BLD ;


 int CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_STRING ;
 int CRYPTO_R_STRING_TOO_LONG ;
 int CRYPTOerr (int ,int ) ;
 size_t INT_MAX ;
 int OSSL_PARAM_OCTET_STRING ;
 TYPE_1__* param_push (int *,char const*,size_t,size_t,int ,int ) ;

int ossl_param_bld_push_octet_string(OSSL_PARAM_BLD *bld, const char *key,
                                     const void *buf, size_t bsize)
{
    OSSL_PARAM_BLD_DEF *pd;

    if (bsize > INT_MAX) {
        CRYPTOerr(CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_STRING,
                  CRYPTO_R_STRING_TOO_LONG);
        return 0;
    }
    pd = param_push(bld, key, bsize, bsize, OSSL_PARAM_OCTET_STRING, 0);
    if (pd == ((void*)0))
        return 0;
    pd->string = buf;
    return 1;
}
