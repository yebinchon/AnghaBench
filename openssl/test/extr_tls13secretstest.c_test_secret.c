
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash ;
typedef int SSL ;
typedef int EVP_MD ;


 int EVP_MAX_MD_SIZE ;
 int IVLEN ;
 int KEYLEN ;
 int TEST_error (char*) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char const*,int) ;
 int ssl_handshake_hash (int *,unsigned char*,int,size_t*) ;
 int * ssl_handshake_md (int *) ;
 int tls13_derive_iv (int *,int const*,unsigned char*,unsigned char*,int) ;
 int tls13_derive_key (int *,int const*,unsigned char*,unsigned char*,int) ;
 int tls13_hkdf_expand (int *,int const*,unsigned char*,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*,size_t,int) ;

__attribute__((used)) static int test_secret(SSL *s, unsigned char *prk,
                       const unsigned char *label, size_t labellen,
                       const unsigned char *ref_secret,
                       const unsigned char *ref_key, const unsigned char *ref_iv)
{
    size_t hashsize;
    unsigned char gensecret[EVP_MAX_MD_SIZE];
    unsigned char hash[EVP_MAX_MD_SIZE];
    unsigned char key[KEYLEN];
    unsigned char iv[IVLEN];
    const EVP_MD *md = ssl_handshake_md(s);

    if (!ssl_handshake_hash(s, hash, sizeof(hash), &hashsize)) {
        TEST_error("Failed to get hash");
        return 0;
    }

    if (!tls13_hkdf_expand(s, md, prk, label, labellen, hash, hashsize,
                           gensecret, hashsize, 1)) {
        TEST_error("Secret generation failed");
        return 0;
    }

    if (!TEST_mem_eq(gensecret, hashsize, ref_secret, hashsize))
        return 0;

    if (!tls13_derive_key(s, md, gensecret, key, KEYLEN)) {
        TEST_error("Key generation failed");
        return 0;
    }

    if (!TEST_mem_eq(key, KEYLEN, ref_key, KEYLEN))
        return 0;

    if (!tls13_derive_iv(s, md, gensecret, iv, IVLEN)) {
        TEST_error("IV generation failed");
        return 0;
    }

    if (!TEST_mem_eq(iv, IVLEN, ref_iv, IVLEN))
        return 0;

    return 1;
}
