
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int * BIO_next (int *) ;
 int BIO_read (int *,char*,int) ;
 int BIO_set_retry_read (int *) ;
 scalar_t__ BIO_should_read (int *) ;

__attribute__((used)) static int watchccs_read(BIO *bio, char *out, int outl)
{
    int ret = 0;
    BIO *next = BIO_next(bio);

    if (outl <= 0)
        return 0;
    if (next == ((void*)0))
        return 0;

    BIO_clear_retry_flags(bio);

    ret = BIO_read(next, out, outl);
    if (ret <= 0 && BIO_should_read(next))
        BIO_set_retry_read(bio);

    return ret;
}
