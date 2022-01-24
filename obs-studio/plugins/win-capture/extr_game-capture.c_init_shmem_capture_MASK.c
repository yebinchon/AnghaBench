#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct game_capture {int /*<<< orphan*/  copy_texture; int /*<<< orphan*/  texture; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; TYPE_2__* global_hook_info; scalar_t__ convert_16bit; TYPE_1__* shmem_data; scalar_t__ data; int /*<<< orphan*/ ** texture_buffers; } ;
typedef  enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
struct TYPE_4__ {int /*<<< orphan*/  format; } ;
struct TYPE_3__ {int tex1_offset; int tex2_offset; } ;

/* Variables and functions */
 int GS_BGRA ; 
 int /*<<< orphan*/  GS_DYNAMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copy_shmem_tex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static inline bool FUNC7(struct game_capture *gc)
{
	enum gs_color_format format;

	gc->texture_buffers[0] =
		(uint8_t *)gc->data + gc->shmem_data->tex1_offset;
	gc->texture_buffers[1] =
		(uint8_t *)gc->data + gc->shmem_data->tex2_offset;

	gc->convert_16bit = FUNC3(gc->global_hook_info->format);
	format = gc->convert_16bit
			 ? GS_BGRA
			 : FUNC0(gc->global_hook_info->format);

	FUNC4();
	FUNC2(gc->texture);
	gc->texture =
		FUNC1(gc->cx, gc->cy, format, 1, NULL, GS_DYNAMIC);
	FUNC5();

	if (!gc->texture) {
		FUNC6("init_shmem_capture: failed to create texture");
		return false;
	}

	gc->copy_texture = copy_shmem_tex;
	return true;
}