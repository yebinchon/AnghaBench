
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int njs_uint_t ;


 void* njs_mp_align (void*,size_t,size_t) ;

__attribute__((used)) static void *
lvlhsh_pool_alloc(void *pool, size_t size, njs_uint_t nalloc)
{
    return njs_mp_align(pool, size, size);
}
