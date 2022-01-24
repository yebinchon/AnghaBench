#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gs_texture_2d {scalar_t__ unpack_buffer; } ;
struct TYPE_5__ {scalar_t__ fbo; scalar_t__ texture; scalar_t__ is_dynamic; int /*<<< orphan*/  is_dummy; scalar_t__ cur_sampler; } ;
typedef  TYPE_1__ gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(gs_texture_t *tex)
{
	struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;
	if (!tex)
		return;

	if (!FUNC5(tex, "gs_texture_destroy"))
		return;

	if (tex->cur_sampler)
		FUNC4(tex->cur_sampler);

	if (!tex->is_dummy && tex->is_dynamic && tex2d->unpack_buffer)
		FUNC2(1, &tex2d->unpack_buffer);

	if (tex->texture)
		FUNC3(1, &tex->texture);

	if (tex->fbo)
		FUNC1(tex->fbo);

	FUNC0(tex);
}