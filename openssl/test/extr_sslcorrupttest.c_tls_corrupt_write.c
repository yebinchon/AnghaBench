
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_next (int *) ;
 int BIO_write (int *,char const*,int) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_memdup (char const*,int) ;
 int TEST_ptr (char*) ;
 int copy_flags (int *) ;
 scalar_t__ docorrupt ;

__attribute__((used)) static int tls_corrupt_write(BIO *bio, const char *in, int inl)
{
    int ret;
    BIO *next = BIO_next(bio);
    char *copy;

    if (docorrupt) {
        if (!TEST_ptr(copy = OPENSSL_memdup(in, inl)))
            return 0;

        copy[inl-1] ^= 1;
        ret = BIO_write(next, copy, inl);
        OPENSSL_free(copy);
    } else {
        ret = BIO_write(next, in, inl);
    }
    copy_flags(bio);

    return ret;
}
