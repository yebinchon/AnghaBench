
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3drm_light_array {int ref; unsigned int size; int ** lights; TYPE_1__ IDirect3DRMLightArray_iface; } ;
typedef int IDirect3DRMLight ;


 int IDirect3DRMLight_AddRef (int *) ;
 int d3drm_light_array_vtbl ;
 struct d3drm_light_array* heap_alloc_zero (int) ;
 int ** heap_calloc (unsigned int,int) ;
 int heap_free (struct d3drm_light_array*) ;

__attribute__((used)) static struct d3drm_light_array *d3drm_light_array_create(unsigned int light_count, IDirect3DRMLight **lights)
{
    struct d3drm_light_array *array;
    unsigned int i;

    if (!(array = heap_alloc_zero(sizeof(*array))))
        return ((void*)0);

    array->IDirect3DRMLightArray_iface.lpVtbl = &d3drm_light_array_vtbl;
    array->ref = 1;
    array->size = light_count;

    if (light_count)
    {
        if (!(array->lights = heap_calloc(light_count, sizeof(*array->lights))))
        {
            heap_free(array);
            return ((void*)0);
        }

        for (i = 0; i < light_count; ++i)
        {
            array->lights[i] = lights[i];
            IDirect3DRMLight_AddRef(array->lights[i]);
        }
    }

    return array;
}
