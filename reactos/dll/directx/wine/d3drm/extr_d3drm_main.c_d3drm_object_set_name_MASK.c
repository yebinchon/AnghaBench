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
struct d3drm_object {int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3DRM_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

HRESULT FUNC4(struct d3drm_object *object, const char *name)
{
    DWORD req_size;

    FUNC1(object->name);
    object->name = NULL;

    if (name)
    {
        req_size = FUNC3(name) + 1;
        if (!(object->name = FUNC0(req_size)))
            return E_OUTOFMEMORY;
        FUNC2(object->name, name, req_size);
    }

    return D3DRM_OK;
}