
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 int EVP_PKEY_CTRL_PEER_KEY ;

__attribute__((used)) static int pkey_ecx_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{

    if (type == EVP_PKEY_CTRL_PEER_KEY)
        return 1;
    return -2;
}
