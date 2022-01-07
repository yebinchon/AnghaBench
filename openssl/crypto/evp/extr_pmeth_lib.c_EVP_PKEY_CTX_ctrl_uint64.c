
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTX_ctrl (int *,int,int,int,int ,int *) ;

int EVP_PKEY_CTX_ctrl_uint64(EVP_PKEY_CTX *ctx, int keytype, int optype,
                             int cmd, uint64_t value)
{
    return EVP_PKEY_CTX_ctrl(ctx, keytype, optype, cmd, 0, &value);
}
