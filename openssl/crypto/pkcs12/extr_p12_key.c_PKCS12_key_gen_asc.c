
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_asc2uni (char const*,int,unsigned char**,int*) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 int PKCS12_F_PKCS12_KEY_GEN_ASC ;
 int PKCS12_key_gen_uni (unsigned char*,int,unsigned char*,int,int,int,int,unsigned char*,int const*) ;
 int PKCS12err (int ,int ) ;

int PKCS12_key_gen_asc(const char *pass, int passlen, unsigned char *salt,
                       int saltlen, int id, int iter, int n,
                       unsigned char *out, const EVP_MD *md_type)
{
    int ret;
    unsigned char *unipass;
    int uniplen;

    if (pass == ((void*)0)) {
        unipass = ((void*)0);
        uniplen = 0;
    } else if (!OPENSSL_asc2uni(pass, passlen, &unipass, &uniplen)) {
        PKCS12err(PKCS12_F_PKCS12_KEY_GEN_ASC, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ret = PKCS12_key_gen_uni(unipass, uniplen, salt, saltlen,
                             id, iter, n, out, md_type);
    if (ret <= 0)
        return 0;
    OPENSSL_clear_free(unipass, uniplen);
    return ret;
}
