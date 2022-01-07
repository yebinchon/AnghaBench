
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_ctrs {scalar_t__ rctr; } ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 struct async_ctrs* BIO_get_data (int *) ;
 int * BIO_next (int *) ;
 int BIO_read (int *,char*,int) ;
 int BIO_set_retry_read (int *) ;
 scalar_t__ BIO_should_read (int *) ;

__attribute__((used)) static int async_read(BIO *bio, char *out, int outl)
{
    struct async_ctrs *ctrs;
    int ret = 0;
    BIO *next = BIO_next(bio);

    if (outl <= 0)
        return 0;
    if (next == ((void*)0))
        return 0;

    ctrs = BIO_get_data(bio);

    BIO_clear_retry_flags(bio);

    if (ctrs->rctr > 0) {
        ret = BIO_read(next, out, 1);
        if (ret <= 0 && BIO_should_read(next))
            BIO_set_retry_read(bio);
        ctrs->rctr = 0;
    } else {
        ctrs->rctr++;
        BIO_set_retry_read(bio);
    }

    return ret;
}
