
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int BIGNUM ;


 int BN_asc2bn (int **,char const*) ;
 int BN_free (int *) ;
 int EVP_PKEY_CTRL_MD ;
 int EVP_PKEY_CTRL_RSA_MGF1_MD ;
 int EVP_PKEY_CTRL_RSA_OAEP_MD ;
 int EVP_PKEY_CTX_md (int *,int,int ,char const*) ;
 int EVP_PKEY_CTX_set0_rsa_oaep_label (int *,unsigned char*,long) ;
 int EVP_PKEY_CTX_set_rsa_keygen_bits (int *,int) ;
 int EVP_PKEY_CTX_set_rsa_keygen_primes (int *,int) ;
 int EVP_PKEY_CTX_set_rsa_keygen_pubexp (int *,int *) ;
 int EVP_PKEY_CTX_set_rsa_padding (int *,int) ;
 int EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen (int *,int) ;
 int EVP_PKEY_CTX_set_rsa_pss_saltlen (int *,int) ;
 int EVP_PKEY_OP_KEYGEN ;
 int EVP_PKEY_OP_TYPE_CRYPT ;
 int EVP_PKEY_OP_TYPE_SIG ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 int RSA_F_PKEY_RSA_CTRL_STR ;
 int RSA_NO_PADDING ;
 int RSA_PKCS1_OAEP_PADDING ;
 int RSA_PKCS1_PADDING ;
 int RSA_PKCS1_PSS_PADDING ;
 int RSA_PSS_SALTLEN_AUTO ;
 int RSA_PSS_SALTLEN_DIGEST ;
 int RSA_PSS_SALTLEN_MAX ;
 int RSA_R_UNKNOWN_PADDING_TYPE ;
 int RSA_R_VALUE_MISSING ;
 int RSA_SSLV23_PADDING ;
 int RSA_X931_PADDING ;
 int RSAerr (int ,int ) ;
 int atoi (char const*) ;
 scalar_t__ pkey_ctx_is_pss (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_rsa_ctrl_str(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (value == ((void*)0)) {
        RSAerr(RSA_F_PKEY_RSA_CTRL_STR, RSA_R_VALUE_MISSING);
        return 0;
    }
    if (strcmp(type, "rsa_padding_mode") == 0) {
        int pm;

        if (strcmp(value, "pkcs1") == 0) {
            pm = RSA_PKCS1_PADDING;
        } else if (strcmp(value, "sslv23") == 0) {
            pm = RSA_SSLV23_PADDING;
        } else if (strcmp(value, "none") == 0) {
            pm = RSA_NO_PADDING;
        } else if (strcmp(value, "oeap") == 0) {
            pm = RSA_PKCS1_OAEP_PADDING;
        } else if (strcmp(value, "oaep") == 0) {
            pm = RSA_PKCS1_OAEP_PADDING;
        } else if (strcmp(value, "x931") == 0) {
            pm = RSA_X931_PADDING;
        } else if (strcmp(value, "pss") == 0) {
            pm = RSA_PKCS1_PSS_PADDING;
        } else {
            RSAerr(RSA_F_PKEY_RSA_CTRL_STR, RSA_R_UNKNOWN_PADDING_TYPE);
            return -2;
        }
        return EVP_PKEY_CTX_set_rsa_padding(ctx, pm);
    }

    if (strcmp(type, "rsa_pss_saltlen") == 0) {
        int saltlen;

        if (!strcmp(value, "digest"))
            saltlen = RSA_PSS_SALTLEN_DIGEST;
        else if (!strcmp(value, "max"))
            saltlen = RSA_PSS_SALTLEN_MAX;
        else if (!strcmp(value, "auto"))
            saltlen = RSA_PSS_SALTLEN_AUTO;
        else
            saltlen = atoi(value);
        return EVP_PKEY_CTX_set_rsa_pss_saltlen(ctx, saltlen);
    }

    if (strcmp(type, "rsa_keygen_bits") == 0) {
        int nbits = atoi(value);

        return EVP_PKEY_CTX_set_rsa_keygen_bits(ctx, nbits);
    }

    if (strcmp(type, "rsa_keygen_pubexp") == 0) {
        int ret;

        BIGNUM *pubexp = ((void*)0);
        if (!BN_asc2bn(&pubexp, value))
            return 0;
        ret = EVP_PKEY_CTX_set_rsa_keygen_pubexp(ctx, pubexp);
        if (ret <= 0)
            BN_free(pubexp);
        return ret;
    }

    if (strcmp(type, "rsa_keygen_primes") == 0) {
        int nprimes = atoi(value);

        return EVP_PKEY_CTX_set_rsa_keygen_primes(ctx, nprimes);
    }

    if (strcmp(type, "rsa_mgf1_md") == 0)
        return EVP_PKEY_CTX_md(ctx,
                               EVP_PKEY_OP_TYPE_SIG | EVP_PKEY_OP_TYPE_CRYPT,
                               EVP_PKEY_CTRL_RSA_MGF1_MD, value);

    if (pkey_ctx_is_pss(ctx)) {

        if (strcmp(type, "rsa_pss_keygen_mgf1_md") == 0)
            return EVP_PKEY_CTX_md(ctx, EVP_PKEY_OP_KEYGEN,
                                   EVP_PKEY_CTRL_RSA_MGF1_MD, value);

        if (strcmp(type, "rsa_pss_keygen_md") == 0)
            return EVP_PKEY_CTX_md(ctx, EVP_PKEY_OP_KEYGEN,
                                   EVP_PKEY_CTRL_MD, value);

        if (strcmp(type, "rsa_pss_keygen_saltlen") == 0) {
            int saltlen = atoi(value);

            return EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen(ctx, saltlen);
        }
    }

    if (strcmp(type, "rsa_oaep_md") == 0)
        return EVP_PKEY_CTX_md(ctx, EVP_PKEY_OP_TYPE_CRYPT,
                               EVP_PKEY_CTRL_RSA_OAEP_MD, value);

    if (strcmp(type, "rsa_oaep_label") == 0) {
        unsigned char *lab;
        long lablen;
        int ret;

        lab = OPENSSL_hexstr2buf(value, &lablen);
        if (!lab)
            return 0;
        ret = EVP_PKEY_CTX_set0_rsa_oaep_label(ctx, lab, lablen);
        if (ret <= 0)
            OPENSSL_free(lab);
        return ret;
    }

    return -2;
}
