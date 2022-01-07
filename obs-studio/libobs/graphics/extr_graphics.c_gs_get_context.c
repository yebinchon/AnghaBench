
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int graphics_t ;


 int * thread_graphics ;

graphics_t *gs_get_context(void)
{
 return thread_graphics;
}
