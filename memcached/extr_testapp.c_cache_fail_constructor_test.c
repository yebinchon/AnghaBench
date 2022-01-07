
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;
typedef int cache_t ;


 int TEST_FAIL ;
 int TEST_PASS ;
 int assert (int ) ;
 int * cache_alloc (int *) ;
 int * cache_create (char*,int,int,int ,int *) ;
 int cache_destroy (int *) ;
 int cache_fail_constructor ;

__attribute__((used)) static enum test_return cache_fail_constructor_test(void)
{
    enum test_return ret = TEST_PASS;

    cache_t *cache = cache_create("test", sizeof(uint64_t), sizeof(uint64_t),
                                  cache_fail_constructor, ((void*)0));
    assert(cache != ((void*)0));
    uint64_t *ptr = cache_alloc(cache);
    if (ptr != ((void*)0)) {
        ret = TEST_FAIL;
    }
    cache_destroy(cache);
    return ret;
}
