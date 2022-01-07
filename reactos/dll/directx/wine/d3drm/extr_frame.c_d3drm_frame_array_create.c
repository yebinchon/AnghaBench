
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3drm_frame_array {int ref; unsigned int size; int * frames; TYPE_1__ IDirect3DRMFrameArray_iface; } ;
typedef int IDirect3DRMFrame3 ;


 int IDirect3DRMFrame3_QueryInterface (int *,int *,void**) ;
 int IID_IDirect3DRMFrame ;
 int d3drm_frame_array_vtbl ;
 struct d3drm_frame_array* heap_alloc_zero (int) ;
 int * heap_calloc (unsigned int,int) ;
 int heap_free (struct d3drm_frame_array*) ;

__attribute__((used)) static struct d3drm_frame_array *d3drm_frame_array_create(unsigned int frame_count, IDirect3DRMFrame3 **frames)
{
    struct d3drm_frame_array *array;
    unsigned int i;

    if (!(array = heap_alloc_zero(sizeof(*array))))
        return ((void*)0);

    array->IDirect3DRMFrameArray_iface.lpVtbl = &d3drm_frame_array_vtbl;
    array->ref = 1;
    array->size = frame_count;

    if (frame_count)
    {
        if (!(array->frames = heap_calloc(frame_count, sizeof(*array->frames))))
        {
            heap_free(array);
            return ((void*)0);
        }

        for (i = 0; i < frame_count; ++i)
        {
            IDirect3DRMFrame3_QueryInterface(frames[i], &IID_IDirect3DRMFrame, (void **)&array->frames[i]);
        }
    }

    return array;
}
