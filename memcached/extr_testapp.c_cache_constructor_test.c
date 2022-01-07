
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;
typedef int cache_t ;


 int TEST_FAIL ;
 int TEST_PASS ;
 int assert (int ) ;
 scalar_t__* cache_alloc (int *) ;
 int cache_constructor ;
 int * cache_create (char*,int,int,int ,int *) ;
 int cache_destroy (int *) ;
 int cache_free (int *,scalar_t__*) ;
 scalar_t__ constructor_pattern ;

__attribute__((used)) static enum test_return cache_constructor_test(void)
{
    cache_t *cache = cache_create("test", sizeof(uint64_t), sizeof(uint64_t),
                                  cache_constructor, ((void*)0));
    assert(cache != ((void*)0));
    uint64_t *ptr = cache_alloc(cache);
    uint64_t pattern = *ptr;
    cache_free(cache, ptr);
    cache_destroy(cache);
    return (pattern == constructor_pattern) ? TEST_PASS : TEST_FAIL;
}
