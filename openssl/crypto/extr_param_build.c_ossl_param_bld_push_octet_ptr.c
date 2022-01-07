
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {void* string; } ;
typedef TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef int OSSL_PARAM_BLD ;


 int CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_PTR ;
 int CRYPTO_R_STRING_TOO_LONG ;
 int CRYPTOerr (int ,int ) ;
 size_t INT_MAX ;
 int OSSL_PARAM_OCTET_PTR ;
 TYPE_1__* param_push (int *,char const*,size_t,int,int ,int ) ;

int ossl_param_bld_push_octet_ptr(OSSL_PARAM_BLD *bld, const char *key,
                                  void *buf, size_t bsize)
{
    OSSL_PARAM_BLD_DEF *pd;

    if (bsize > INT_MAX) {
        CRYPTOerr(CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_PTR,
                  CRYPTO_R_STRING_TOO_LONG);
        return 0;
    }
    pd = param_push(bld, key, bsize, sizeof(buf), OSSL_PARAM_OCTET_PTR, 0);
    if (pd == ((void*)0))
        return 0;
    pd->string = buf;
    return 1;
}
