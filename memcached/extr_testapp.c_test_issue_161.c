
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;


 int TEST_PASS ;
 int cache_bulkalloc (int) ;

__attribute__((used)) static enum test_return test_issue_161(void)
{
    enum test_return ret = cache_bulkalloc(1);
    if (ret == TEST_PASS) {
        ret = cache_bulkalloc(512);
    }

    return ret;
}
