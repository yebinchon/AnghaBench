
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_WATCHCCS_FILTER ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int const*,int ) ;
 int BIO_meth_set_ctrl (int const*,int ) ;
 int BIO_meth_set_destroy (int const*,int ) ;
 int BIO_meth_set_gets (int const*,int ) ;
 int BIO_meth_set_puts (int const*,int ) ;
 int BIO_meth_set_read (int const*,int ) ;
 int BIO_meth_set_write (int const*,int ) ;
 int const* method_watchccs ;
 int watchccs_ctrl ;
 int watchccs_free ;
 int watchccs_gets ;
 int watchccs_new ;
 int watchccs_puts ;
 int watchccs_read ;
 int watchccs_write ;

__attribute__((used)) static const BIO_METHOD *bio_f_watchccs_filter(void)
{
    if (method_watchccs == ((void*)0)) {
        method_watchccs = BIO_meth_new(BIO_TYPE_WATCHCCS_FILTER,
                                       "Watch CCS filter");
        if ( method_watchccs == ((void*)0)
            || !BIO_meth_set_write(method_watchccs, watchccs_write)
            || !BIO_meth_set_read(method_watchccs, watchccs_read)
            || !BIO_meth_set_puts(method_watchccs, watchccs_puts)
            || !BIO_meth_set_gets(method_watchccs, watchccs_gets)
            || !BIO_meth_set_ctrl(method_watchccs, watchccs_ctrl)
            || !BIO_meth_set_create(method_watchccs, watchccs_new)
            || !BIO_meth_set_destroy(method_watchccs, watchccs_free))
            return ((void*)0);
    }
    return method_watchccs;
}
