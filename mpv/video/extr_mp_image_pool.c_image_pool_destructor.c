
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_pool {int dummy; } ;


 int mp_image_pool_clear (struct mp_image_pool*) ;

__attribute__((used)) static void image_pool_destructor(void *ptr)
{
    struct mp_image_pool *pool = ptr;
    mp_image_pool_clear(pool);
}
