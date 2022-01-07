
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_CUSTOM_FILTER ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int const*,int ) ;
 int BIO_meth_set_ctrl (int const*,int ) ;
 int BIO_meth_set_destroy (int const*,int ) ;
 int BIO_meth_set_gets (int const*,int ) ;
 int BIO_meth_set_puts (int const*,int ) ;
 int BIO_meth_set_read (int const*,int ) ;
 int BIO_meth_set_write (int const*,int ) ;
 int const* method_tls_corrupt ;
 int tls_corrupt_ctrl ;
 int tls_corrupt_free ;
 int tls_corrupt_gets ;
 int tls_corrupt_new ;
 int tls_corrupt_puts ;
 int tls_corrupt_read ;
 int tls_corrupt_write ;

__attribute__((used)) static const BIO_METHOD *bio_f_tls_corrupt_filter(void)
{
    if (method_tls_corrupt == ((void*)0)) {
        method_tls_corrupt = BIO_meth_new(BIO_TYPE_CUSTOM_FILTER,
                                          "TLS corrupt filter");
        if ( method_tls_corrupt == ((void*)0)
            || !BIO_meth_set_write(method_tls_corrupt, tls_corrupt_write)
            || !BIO_meth_set_read(method_tls_corrupt, tls_corrupt_read)
            || !BIO_meth_set_puts(method_tls_corrupt, tls_corrupt_puts)
            || !BIO_meth_set_gets(method_tls_corrupt, tls_corrupt_gets)
            || !BIO_meth_set_ctrl(method_tls_corrupt, tls_corrupt_ctrl)
            || !BIO_meth_set_create(method_tls_corrupt, tls_corrupt_new)
            || !BIO_meth_set_destroy(method_tls_corrupt, tls_corrupt_free))
            return ((void*)0);
    }
    return method_tls_corrupt;
}
