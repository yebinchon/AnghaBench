
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_DSA ;
 int EVP_PKEY_RSA ;
 int EVP_PKEY_get0_DSA (int *) ;
 int EVP_PKEY_get0_RSA (int *) ;
 int EVP_PKEY_id (int *) ;
 unsigned int MS_KEYALG_DSS_SIGN ;
 unsigned int MS_KEYALG_RSA_KEYX ;
 int MS_PRIVATEKEYBLOB ;
 int MS_PUBLICKEYBLOB ;
 unsigned char* OPENSSL_malloc (int) ;
 int PEM_F_DO_I2B ;
 int PEMerr (int ,int ) ;
 int blob_length (unsigned int,int,int) ;
 unsigned int check_bitlen_dsa (int ,int,unsigned int*) ;
 unsigned int check_bitlen_rsa (int ,int,unsigned int*) ;
 int write_dsa (unsigned char**,int ,int) ;
 int write_ledword (unsigned char**,unsigned int) ;
 int write_rsa (unsigned char**,int ,int) ;

__attribute__((used)) static int do_i2b(unsigned char **out, EVP_PKEY *pk, int ispub)
{
    unsigned char *p;
    unsigned int bitlen, magic = 0, keyalg;
    int outlen, noinc = 0;
    int pktype = EVP_PKEY_id(pk);
    if (pktype == EVP_PKEY_DSA) {
        bitlen = check_bitlen_dsa(EVP_PKEY_get0_DSA(pk), ispub, &magic);
        keyalg = MS_KEYALG_DSS_SIGN;
    } else if (pktype == EVP_PKEY_RSA) {
        bitlen = check_bitlen_rsa(EVP_PKEY_get0_RSA(pk), ispub, &magic);
        keyalg = MS_KEYALG_RSA_KEYX;
    } else
        return -1;
    if (bitlen == 0)
        return -1;
    outlen = 16 + blob_length(bitlen,
                              keyalg == MS_KEYALG_DSS_SIGN ? 1 : 0, ispub);
    if (out == ((void*)0))
        return outlen;
    if (*out)
        p = *out;
    else {
        if ((p = OPENSSL_malloc(outlen)) == ((void*)0)) {
            PEMerr(PEM_F_DO_I2B, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        *out = p;
        noinc = 1;
    }
    if (ispub)
        *p++ = MS_PUBLICKEYBLOB;
    else
        *p++ = MS_PRIVATEKEYBLOB;
    *p++ = 0x2;
    *p++ = 0;
    *p++ = 0;
    write_ledword(&p, keyalg);
    write_ledword(&p, magic);
    write_ledword(&p, bitlen);
    if (keyalg == MS_KEYALG_DSS_SIGN)
        write_dsa(&p, EVP_PKEY_get0_DSA(pk), ispub);
    else
        write_rsa(&p, EVP_PKEY_get0_RSA(pk), ispub);
    if (!noinc)
        *out += outlen;
    return outlen;
}
