
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NETSCAPE_SPKI ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_DecodeBlock (unsigned char*,unsigned char const*,int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int X509_F_NETSCAPE_SPKI_B64_DECODE ;
 int X509_R_BASE64_DECODE_ERROR ;
 int X509err (int ,int ) ;
 int * d2i_NETSCAPE_SPKI (int *,unsigned char const**,int) ;
 int strlen (char const*) ;

NETSCAPE_SPKI *NETSCAPE_SPKI_b64_decode(const char *str, int len)
{
    unsigned char *spki_der;
    const unsigned char *p;
    int spki_len;
    NETSCAPE_SPKI *spki;
    if (len <= 0)
        len = strlen(str);
    if ((spki_der = OPENSSL_malloc(len + 1)) == ((void*)0)) {
        X509err(X509_F_NETSCAPE_SPKI_B64_DECODE, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    spki_len = EVP_DecodeBlock(spki_der, (const unsigned char *)str, len);
    if (spki_len < 0) {
        X509err(X509_F_NETSCAPE_SPKI_B64_DECODE, X509_R_BASE64_DECODE_ERROR);
        OPENSSL_free(spki_der);
        return ((void*)0);
    }
    p = spki_der;
    spki = d2i_NETSCAPE_SPKI(((void*)0), &p, spki_len);
    OPENSSL_free(spki_der);
    return spki;
}
