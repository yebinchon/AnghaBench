
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int DSA_F_PKEY_DSA_CTRL_STR ;
 int DSA_R_INVALID_DIGEST_TYPE ;
 int DSAerr (int ,int ) ;
 int EVP_PKEY_CTX_set_dsa_paramgen_bits (int *,int) ;
 int EVP_PKEY_CTX_set_dsa_paramgen_md (int *,int const*) ;
 int EVP_PKEY_CTX_set_dsa_paramgen_q_bits (int *,int) ;
 int * EVP_get_digestbyname (char const*) ;
 int atoi (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_dsa_ctrl_str(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (strcmp(type, "dsa_paramgen_bits") == 0) {
        int nbits;
        nbits = atoi(value);
        return EVP_PKEY_CTX_set_dsa_paramgen_bits(ctx, nbits);
    }
    if (strcmp(type, "dsa_paramgen_q_bits") == 0) {
        int qbits = atoi(value);
        return EVP_PKEY_CTX_set_dsa_paramgen_q_bits(ctx, qbits);
    }
    if (strcmp(type, "dsa_paramgen_md") == 0) {
        const EVP_MD *md = EVP_get_digestbyname(value);

        if (md == ((void*)0)) {
            DSAerr(DSA_F_PKEY_DSA_CTRL_STR, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        return EVP_PKEY_CTX_set_dsa_paramgen_md(ctx, md);
    }
    return -2;
}
