
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ curr; int total_blocks; int secure_blocks; TYPE_1__* params; } ;
struct TYPE_6__ {char const* key; int type; int size; int secure; scalar_t__ alloc_blocks; } ;
typedef TYPE_1__ OSSL_PARAM_BLD_DEF ;
typedef TYPE_2__ OSSL_PARAM_BLD ;


 int CRYPTO_F_PARAM_PUSH ;
 int CRYPTO_R_TOO_MANY_RECORDS ;
 int CRYPTOerr (int ,int ) ;
 scalar_t__ OSSL_PARAM_BLD_MAX ;
 scalar_t__ bytes_to_blocks (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static OSSL_PARAM_BLD_DEF *param_push(OSSL_PARAM_BLD *bld, const char *key,
                                      int size, size_t alloc, int type,
                                      int secure)
{
    OSSL_PARAM_BLD_DEF *pd;

    if (bld->curr >= OSSL_PARAM_BLD_MAX) {
        CRYPTOerr(CRYPTO_F_PARAM_PUSH, CRYPTO_R_TOO_MANY_RECORDS);
        return ((void*)0);
    }
    pd = bld->params + bld->curr++;
    memset(pd, 0, sizeof(*pd));
    pd->key = key;
    pd->type = type;
    pd->size = size;
    pd->alloc_blocks = bytes_to_blocks(size);
    if ((pd->secure = secure) != 0)
        bld->secure_blocks += pd->alloc_blocks;
    else
        bld->total_blocks += pd->alloc_blocks;
    return pd;
}
