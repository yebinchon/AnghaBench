
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;
typedef int cache_t ;


 int TEST_FAIL ;
 int TEST_PASS ;
 int assert (int ) ;
 char* cache_alloc (int *) ;
 int * cache_create (char*,int,int,int *,int ) ;
 int cache_destroy (int *) ;
 int cache_destructor ;
 int cache_free (int *,char*) ;
 char* destruct_data ;

__attribute__((used)) static enum test_return cache_destructor_test(void)
{
    cache_t *cache = cache_create("test", sizeof(uint32_t), sizeof(char*),
                                  ((void*)0), cache_destructor);
    assert(cache != ((void*)0));
    char *ptr = cache_alloc(cache);
    cache_free(cache, ptr);
    cache_destroy(cache);

    return (ptr == destruct_data) ? TEST_PASS : TEST_FAIL;
}
