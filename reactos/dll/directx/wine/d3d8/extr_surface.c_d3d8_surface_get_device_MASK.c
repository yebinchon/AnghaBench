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
struct d3d8_surface {int /*<<< orphan*/ * parent_device; TYPE_1__* texture; } ;
struct d3d8_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent_device; } ;
typedef  int /*<<< orphan*/  IDirect3DDevice8 ;

/* Variables and functions */
 struct d3d8_device* FUNC0 (int /*<<< orphan*/ *) ; 

struct d3d8_device *FUNC1(const struct d3d8_surface *surface)
{
    IDirect3DDevice8 *device;
    device = surface->texture ? surface->texture->parent_device : surface->parent_device;
    return FUNC0(device);
}