
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocb128_f ;
typedef int block128_f ;
typedef int OCB128_CONTEXT ;


 int CRYPTO_ocb128_init (int *,void*,void*,int ,int ,int ) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int) ;

OCB128_CONTEXT *CRYPTO_ocb128_new(void *keyenc, void *keydec,
                                  block128_f encrypt, block128_f decrypt,
                                  ocb128_f stream)
{
    OCB128_CONTEXT *octx;
    int ret;

    if ((octx = OPENSSL_malloc(sizeof(*octx))) != ((void*)0)) {
        ret = CRYPTO_ocb128_init(octx, keyenc, keydec, encrypt, decrypt,
                                 stream);
        if (ret)
            return octx;
        OPENSSL_free(octx);
    }

    return ((void*)0);
}
