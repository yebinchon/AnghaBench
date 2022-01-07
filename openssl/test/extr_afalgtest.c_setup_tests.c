
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int * ENGINE_by_id (char*) ;
 int TEST_info (char*) ;
 int * e ;
 int test_afalg_aes_cbc ;

int setup_tests(void)
{

    if ((e = ENGINE_by_id("afalg")) == ((void*)0)) {

        TEST_info("Can't load AFALG engine");
    } else {

        ADD_ALL_TESTS(test_afalg_aes_cbc, 3);

    }


    return 1;
}
