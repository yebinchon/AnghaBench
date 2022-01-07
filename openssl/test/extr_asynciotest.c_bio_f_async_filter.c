
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_ASYNC_FILTER ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int const*,int ) ;
 int BIO_meth_set_ctrl (int const*,int ) ;
 int BIO_meth_set_destroy (int const*,int ) ;
 int BIO_meth_set_gets (int const*,int ) ;
 int BIO_meth_set_puts (int const*,int ) ;
 int BIO_meth_set_read (int const*,int ) ;
 int BIO_meth_set_write (int const*,int ) ;
 int async_ctrl ;
 int async_free ;
 int async_gets ;
 int async_new ;
 int async_puts ;
 int async_read ;
 int async_write ;
 int const* methods_async ;

__attribute__((used)) static const BIO_METHOD *bio_f_async_filter(void)
{
    if (methods_async == ((void*)0)) {
        methods_async = BIO_meth_new(BIO_TYPE_ASYNC_FILTER, "Async filter");
        if ( methods_async == ((void*)0)
            || !BIO_meth_set_write(methods_async, async_write)
            || !BIO_meth_set_read(methods_async, async_read)
            || !BIO_meth_set_puts(methods_async, async_puts)
            || !BIO_meth_set_gets(methods_async, async_gets)
            || !BIO_meth_set_ctrl(methods_async, async_ctrl)
            || !BIO_meth_set_create(methods_async, async_new)
            || !BIO_meth_set_destroy(methods_async, async_free))
            return ((void*)0);
    }
    return methods_async;
}
