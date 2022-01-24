#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * async_prev_texrender; int /*<<< orphan*/ ** async_prev_textures; int /*<<< orphan*/  deinterlace_mode; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_DEINTERLACE_MODE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(obs_source_t *source)
{
	FUNC2();
	FUNC1(source->async_prev_textures[0]);
	FUNC1(source->async_prev_textures[1]);
	FUNC1(source->async_prev_textures[2]);
	FUNC0(source->async_prev_texrender);
	source->deinterlace_mode = OBS_DEINTERLACE_MODE_DISABLE;
	source->async_prev_textures[0] = NULL;
	source->async_prev_textures[1] = NULL;
	source->async_prev_textures[2] = NULL;
	source->async_prev_texrender = NULL;
	FUNC3();
}