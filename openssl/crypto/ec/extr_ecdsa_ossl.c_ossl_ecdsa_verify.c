
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int ECDSA_SIG ;


 int ECDSA_SIG_free (int *) ;
 int * ECDSA_SIG_new () ;
 int ECDSA_do_verify (unsigned char const*,int,int *,int *) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 int * d2i_ECDSA_SIG (int **,unsigned char const**,int) ;
 int i2d_ECDSA_SIG (int *,unsigned char**) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char*,int) ;

int ossl_ecdsa_verify(int type, const unsigned char *dgst, int dgst_len,
                      const unsigned char *sigbuf, int sig_len, EC_KEY *eckey)
{
    ECDSA_SIG *s;
    const unsigned char *p = sigbuf;
    unsigned char *der = ((void*)0);
    int derlen = -1;
    int ret = -1;

    s = ECDSA_SIG_new();
    if (s == ((void*)0))
        return ret;
    if (d2i_ECDSA_SIG(&s, &p, sig_len) == ((void*)0))
        goto err;

    derlen = i2d_ECDSA_SIG(s, &der);
    if (derlen != sig_len || memcmp(sigbuf, der, derlen) != 0)
        goto err;
    ret = ECDSA_do_verify(dgst, dgst_len, s, eckey);
 err:
    OPENSSL_clear_free(der, derlen);
    ECDSA_SIG_free(s);
    return ret;
}
