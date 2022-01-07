
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_MEMPACKET_TEST ;
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
 int mempacket_test_ctrl ;
 int mempacket_test_free ;
 int mempacket_test_gets ;
 int mempacket_test_new ;
 int mempacket_test_puts ;
 int mempacket_test_read ;
 int mempacket_test_write ;
 int const* meth_mem ;

const BIO_METHOD *bio_s_mempacket_test(void)
{
    if (meth_mem == ((void*)0)) {
        if (!TEST_ptr(meth_mem = BIO_meth_new(BIO_TYPE_MEMPACKET_TEST,
                                              "Mem Packet Test"))
            || !TEST_true(BIO_meth_set_write(meth_mem, mempacket_test_write))
            || !TEST_true(BIO_meth_set_read(meth_mem, mempacket_test_read))
            || !TEST_true(BIO_meth_set_puts(meth_mem, mempacket_test_puts))
            || !TEST_true(BIO_meth_set_gets(meth_mem, mempacket_test_gets))
            || !TEST_true(BIO_meth_set_ctrl(meth_mem, mempacket_test_ctrl))
            || !TEST_true(BIO_meth_set_create(meth_mem, mempacket_test_new))
            || !TEST_true(BIO_meth_set_destroy(meth_mem, mempacket_test_free)))
            return ((void*)0);
    }
    return meth_mem;
}
