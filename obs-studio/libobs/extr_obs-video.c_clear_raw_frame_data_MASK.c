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
struct obs_core_video {int /*<<< orphan*/  vframe_info_buffer; int /*<<< orphan*/  textures_copied; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* obs ; 

__attribute__((used)) static void FUNC2(void)
{
	struct obs_core_video *video = &obs->video;
	FUNC1(video->textures_copied, 0, sizeof(video->textures_copied));
	FUNC0(&video->vframe_info_buffer);
}