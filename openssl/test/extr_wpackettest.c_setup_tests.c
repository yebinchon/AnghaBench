
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int BUF_MEM_new () ;
 int TEST_ptr (int ) ;
 int buf ;
 int test_WPACKET_allocate_bytes ;
 int test_WPACKET_init ;
 int test_WPACKET_memcpy ;
 int test_WPACKET_set_flags ;
 int test_WPACKET_set_max_size ;
 int test_WPACKET_start_sub_packet ;

int setup_tests(void)
{
    if (!TEST_ptr(buf = BUF_MEM_new()))
            return 0;

    ADD_TEST(test_WPACKET_init);
    ADD_TEST(test_WPACKET_set_max_size);
    ADD_TEST(test_WPACKET_start_sub_packet);
    ADD_TEST(test_WPACKET_set_flags);
    ADD_TEST(test_WPACKET_allocate_bytes);
    ADD_TEST(test_WPACKET_memcpy);
    return 1;
}
