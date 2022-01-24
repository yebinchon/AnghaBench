#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gs_zstencil_t ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  is_render_target; } ;
typedef  TYPE_1__ gs_texture_t ;
typedef  int /*<<< orphan*/  gs_device_t ;

/* Variables and functions */
 scalar_t__ GS_TEXTURE_2D ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(gs_device_t *device, gs_texture_t *tex,
			      gs_zstencil_t *zstencil)
{
	if (tex) {
		if (tex->type != GS_TEXTURE_2D) {
			FUNC0(LOG_ERROR, "Texture is not a 2D texture");
			goto fail;
		}

		if (!tex->is_render_target) {
			FUNC0(LOG_ERROR, "Texture is not a render target");
			goto fail;
		}
	}

	if (!FUNC1(device, tex, 0, zstencil))
		goto fail;

	return;

fail:
	FUNC0(LOG_ERROR, "device_set_render_target (GL) failed");
}