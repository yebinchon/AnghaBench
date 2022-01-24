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
struct d3drm_texture {scalar_t__ surface; int /*<<< orphan*/  d3drm; scalar_t__ image; int /*<<< orphan*/  obj; int /*<<< orphan*/  IDirect3DRMTexture_iface; } ;
typedef  int /*<<< orphan*/  IDirect3DRMObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3drm_texture*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct d3drm_texture*) ; 

__attribute__((used)) static void FUNC5(struct d3drm_texture *texture)
{
    FUNC2("texture %p is being destroyed.\n", texture);

    FUNC3((IDirect3DRMObject*)&texture->IDirect3DRMTexture_iface, &texture->obj);
    if (texture->image || texture->surface)
        FUNC0(texture->d3drm);
    if (texture->surface)
        FUNC1(texture->surface);
    FUNC4(texture);
}