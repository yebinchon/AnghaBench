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
struct d3drm_light_array {int ref; unsigned int size; int /*<<< orphan*/ ** lights; TYPE_1__ IDirect3DRMLightArray_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRMLight ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d3drm_light_array_vtbl ; 
 struct d3drm_light_array* FUNC1 (int) ; 
 int /*<<< orphan*/ ** FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct d3drm_light_array*) ; 

__attribute__((used)) static struct d3drm_light_array *FUNC4(unsigned int light_count, IDirect3DRMLight **lights)
{
    struct d3drm_light_array *array;
    unsigned int i;

    if (!(array = FUNC1(sizeof(*array))))
        return NULL;

    array->IDirect3DRMLightArray_iface.lpVtbl = &d3drm_light_array_vtbl;
    array->ref = 1;
    array->size = light_count;

    if (light_count)
    {
        if (!(array->lights = FUNC2(light_count, sizeof(*array->lights))))
        {
            FUNC3(array);
            return NULL;
        }

        for (i = 0; i < light_count; ++i)
        {
            array->lights[i] = lights[i];
            FUNC0(array->lights[i]);
        }
    }

    return array;
}