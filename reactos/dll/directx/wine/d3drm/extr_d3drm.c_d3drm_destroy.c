
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm {int dummy; } ;


 int TRACE (char*,struct d3drm*) ;
 int heap_free (struct d3drm*) ;

__attribute__((used)) static void d3drm_destroy(struct d3drm *d3drm)
{
    heap_free(d3drm);
    TRACE("d3drm object %p is being destroyed.\n", d3drm);
}
