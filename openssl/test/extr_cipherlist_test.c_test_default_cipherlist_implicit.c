
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXECUTE_CIPHERLIST_TEST () ;
 int SETUP_CIPHERLIST_TEST_FIXTURE () ;
 int * fixture ;
 int result ;

__attribute__((used)) static int test_default_cipherlist_implicit(void)
{
    SETUP_CIPHERLIST_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    EXECUTE_CIPHERLIST_TEST();
    return result;
}
