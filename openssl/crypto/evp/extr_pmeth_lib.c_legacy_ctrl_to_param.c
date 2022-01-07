
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;





 int EVP_PKEY_CTX_get_signature_md (int *,void*) ;
 int EVP_PKEY_CTX_set_dh_pad (int *,int) ;
 int EVP_PKEY_CTX_set_signature_md (int *,void*) ;

__attribute__((used)) static int legacy_ctrl_to_param(EVP_PKEY_CTX *ctx, int keytype, int optype,
                                int cmd, int p1, void *p2)
{
    switch (cmd) {

    case 130:
        return EVP_PKEY_CTX_set_dh_pad(ctx, p1);

    case 128:
        return EVP_PKEY_CTX_set_signature_md(ctx, p2);
    case 129:
        return EVP_PKEY_CTX_get_signature_md(ctx, p2);
    }
    return 0;
}
