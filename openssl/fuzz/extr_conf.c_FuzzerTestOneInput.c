
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int CONF ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 scalar_t__ BIO_write (int *,int const*,size_t) ;
 int ERR_clear_error () ;
 int NCONF_free (int *) ;
 int NCONF_load_bio (int *,int *,long*) ;
 int * NCONF_new (int *) ;
 int OPENSSL_assert (int) ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    CONF *conf;
    BIO *in;
    long eline;

    if (len == 0)
        return 0;

    conf = NCONF_new(((void*)0));
    in = BIO_new(BIO_s_mem());
    OPENSSL_assert((size_t)BIO_write(in, buf, len) == len);
    NCONF_load_bio(conf, in, &eline);
    NCONF_free(conf);
    BIO_free(in);
    ERR_clear_error();

    return 0;
}
