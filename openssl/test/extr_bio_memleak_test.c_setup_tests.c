
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_bio_get_mem ;
 int test_bio_memleak ;
 int test_bio_new_mem_buf ;
 int test_bio_nonclear_rst ;
 int test_bio_rdonly_mem_buf ;
 int test_bio_rdwr_rdonly ;

int setup_tests(void)
{
    ADD_TEST(test_bio_memleak);
    ADD_TEST(test_bio_get_mem);
    ADD_TEST(test_bio_new_mem_buf);
    ADD_TEST(test_bio_rdonly_mem_buf);
    ADD_TEST(test_bio_rdwr_rdonly);
    ADD_TEST(test_bio_nonclear_rst);
    return 1;
}
