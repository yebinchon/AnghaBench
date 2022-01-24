#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * lpVtbl; } ;
struct d3drm_frame_array {int ref; unsigned int size; int /*<<< orphan*/ * frames; TYPE_1__ IDirect3DRMFrameArray_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRMFrame3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDirect3DRMFrame ; 
 int /*<<< orphan*/  d3drm_frame_array_vtbl ; 
 struct d3drm_frame_array* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct d3drm_frame_array*) ; 

__attribute__((used)) static struct d3drm_frame_array *FUNC4(unsigned int frame_count, IDirect3DRMFrame3 **frames)
{
    struct d3drm_frame_array *array;
    unsigned int i;

    if (!(array = FUNC1(sizeof(*array))))
        return NULL;

    array->IDirect3DRMFrameArray_iface.lpVtbl = &d3drm_frame_array_vtbl;
    array->ref = 1;
    array->size = frame_count;

    if (frame_count)
    {
        if (!(array->frames = FUNC2(frame_count, sizeof(*array->frames))))
        {
            FUNC3(array);
            return NULL;
        }

        for (i = 0; i < frame_count; ++i)
        {
            FUNC0(frames[i], &IID_IDirect3DRMFrame, (void **)&array->frames[i]);
        }
    }

    return array;
}