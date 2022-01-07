
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;
typedef int cache_t ;


 int ITERATIONS ;
 int TEST_PASS ;
 int assert (int) ;
 void* cache_alloc (int *) ;
 int * cache_create (char*,size_t,int,int *,int *) ;
 int cache_destroy (int *) ;
 int cache_free (int *,void*) ;
 int memset (void*,int,size_t) ;

__attribute__((used)) static enum test_return cache_bulkalloc(size_t datasize)
{
    cache_t *cache = cache_create("test", datasize, sizeof(char*),
                                  ((void*)0), ((void*)0));

    void *ptr[1024];

    for (int ii = 0; ii < 1024; ++ii) {
        ptr[ii] = cache_alloc(cache);
        assert(ptr[ii] != 0);
        memset(ptr[ii], 0xff, datasize);
    }

    for (int ii = 0; ii < 1024; ++ii) {
        cache_free(cache, ptr[ii]);
    }


    cache_destroy(cache);
    return TEST_PASS;
}
