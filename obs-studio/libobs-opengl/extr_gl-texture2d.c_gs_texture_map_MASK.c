#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  is_dynamic; } ;
struct gs_texture_2d {int width; int /*<<< orphan*/  unpack_buffer; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  GL_WRITE_ONLY ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 

bool FUNC6(gs_texture_t *tex, uint8_t **ptr, uint32_t *linesize)
{
	struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;

	if (!FUNC5(tex, "gs_texture_map"))
		goto fail;

	if (!tex2d->base.is_dynamic) {
		FUNC0(LOG_ERROR, "Texture is not dynamic");
		goto fail;
	}

	if (!FUNC2(GL_PIXEL_UNPACK_BUFFER, tex2d->unpack_buffer))
		goto fail;

	*ptr = FUNC1(GL_PIXEL_UNPACK_BUFFER, GL_WRITE_ONLY);
	if (!FUNC3("glMapBuffer"))
		goto fail;

	FUNC2(GL_PIXEL_UNPACK_BUFFER, 0);

	*linesize = tex2d->width * FUNC4(tex->format) / 8;
	*linesize = (*linesize + 3) & 0xFFFFFFFC;
	return true;

fail:
	FUNC0(LOG_ERROR, "gs_texture_map (GL) failed");
	return false;
}