
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int EC_F_PKEY_ECD_CTRL ;
 int EC_R_INVALID_DIGEST_TYPE ;
 int ECerr (int ,int ) ;


 int const* EVP_md_null () ;

__attribute__((used)) static int pkey_ecd_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    switch (type) {
    case 128:

        if (p2 == ((void*)0) || (const EVP_MD *)p2 == EVP_md_null())
            return 1;
        ECerr(EC_F_PKEY_ECD_CTRL, EC_R_INVALID_DIGEST_TYPE);
        return 0;

    case 129:
        return 1;
    }
    return -2;
}
