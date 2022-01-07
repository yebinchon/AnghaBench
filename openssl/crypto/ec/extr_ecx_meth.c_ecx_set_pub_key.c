
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY ;


 int KEY_OP_PUBLIC ;
 int ecx_key_op (TYPE_2__*,int ,int *,unsigned char const*,size_t,int ) ;

__attribute__((used)) static int ecx_set_pub_key(EVP_PKEY *pkey, const unsigned char *pub, size_t len)
{
    return ecx_key_op(pkey, pkey->ameth->pkey_id, ((void*)0), pub, len,
                      KEY_OP_PUBLIC);
}
