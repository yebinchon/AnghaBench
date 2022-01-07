
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int njs_mp_free (void*,void*) ;

__attribute__((used)) static void
lvlhsh_pool_free(void *pool, void *p, size_t size)
{
    njs_mp_free(pool, p);
}
