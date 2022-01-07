
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_aframe_pool {int avpool; } ;


 int av_buffer_pool_uninit (int *) ;

__attribute__((used)) static void mp_aframe_pool_destructor(void *p)
{
    struct mp_aframe_pool *pool = p;
    av_buffer_pool_uninit(&pool->avpool);
}
