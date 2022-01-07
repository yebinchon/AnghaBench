
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
typedef TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef int OSSL_PARAM_BLD ;


 int CRYPTO_F_PARAM_PUSH_NUM ;
 int CRYPTO_R_TOO_MANY_BYTES ;
 int CRYPTOerr (int ,int ) ;
 int memcpy (int *,void*,size_t) ;
 TYPE_1__* param_push (int *,char const*,size_t,size_t,int,int ) ;

__attribute__((used)) static int param_push_num(OSSL_PARAM_BLD *bld, const char *key,
                          void *num, size_t size, int type)
{
    OSSL_PARAM_BLD_DEF *pd = param_push(bld, key, size, size, type, 0);

    if (pd == ((void*)0))
        return 0;
    if (size > sizeof(pd->num)) {
        CRYPTOerr(CRYPTO_F_PARAM_PUSH_NUM, CRYPTO_R_TOO_MANY_BYTES);
        return 0;
    }
    memcpy(&pd->num, num, size);
    return 1;
}
