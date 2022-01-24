#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct d3drm_object {scalar_t__ name; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3DRM_OK ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int FUNC1 (scalar_t__) ; 

HRESULT FUNC2(struct d3drm_object *object, DWORD *size, char *name)
{
    DWORD req_size;

    if (!size)
        return E_INVALIDARG;

    req_size = object->name ? FUNC1(object->name) + 1 : 0;
    if (name && *size < req_size)
        return E_INVALIDARG;

    if (name)
    {
        if (object->name)
            FUNC0(name, object->name, req_size);
        else if (*size)
            *name = 0;
    }

    *size = req_size;

    return D3DRM_OK;
}