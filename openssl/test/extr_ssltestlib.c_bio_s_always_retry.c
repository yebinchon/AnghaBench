
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_ALWAYS_RETRY ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int const*,int ) ;
 int BIO_meth_set_ctrl (int const*,int ) ;
 int BIO_meth_set_destroy (int const*,int ) ;
 int BIO_meth_set_gets (int const*,int ) ;
 int BIO_meth_set_puts (int const*,int ) ;
 int BIO_meth_set_read (int const*,int ) ;
 int BIO_meth_set_write (int const*,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_true (int ) ;
 int always_retry_ctrl ;
 int always_retry_free ;
 int always_retry_gets ;
 int always_retry_new ;
 int always_retry_puts ;
 int always_retry_read ;
 int always_retry_write ;
 int const* meth_always_retry ;

const BIO_METHOD *bio_s_always_retry(void)
{
    if (meth_always_retry == ((void*)0)) {
        if (!TEST_ptr(meth_always_retry = BIO_meth_new(BIO_TYPE_ALWAYS_RETRY,
                                                       "Always Retry"))
            || !TEST_true(BIO_meth_set_write(meth_always_retry,
                                             always_retry_write))
            || !TEST_true(BIO_meth_set_read(meth_always_retry,
                                            always_retry_read))
            || !TEST_true(BIO_meth_set_puts(meth_always_retry,
                                            always_retry_puts))
            || !TEST_true(BIO_meth_set_gets(meth_always_retry,
                                            always_retry_gets))
            || !TEST_true(BIO_meth_set_ctrl(meth_always_retry,
                                            always_retry_ctrl))
            || !TEST_true(BIO_meth_set_create(meth_always_retry,
                                              always_retry_new))
            || !TEST_true(BIO_meth_set_destroy(meth_always_retry,
                                               always_retry_free)))
            return ((void*)0);
    }
    return meth_always_retry;
}
