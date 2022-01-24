#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* video_render ) (scalar_t__,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {TYPE_3__ context; TYPE_1__ info; } ;
typedef  TYPE_4__ obs_source_t ;
typedef  int /*<<< orphan*/  gs_technique_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
struct TYPE_8__ {int /*<<< orphan*/ * default_effect; } ;
struct TYPE_11__ {TYPE_2__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_6__* obs ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC6(obs_source_t *source)
{
	gs_effect_t *effect = obs->video.default_effect;
	gs_technique_t *tech = FUNC0(effect, "Draw");
	size_t passes, i;

	passes = FUNC1(tech);
	for (i = 0; i < passes; i++) {
		FUNC2(tech, i);
		if (source->context.data)
			source->info.video_render(source->context.data, effect);
		FUNC4(tech);
	}
	FUNC3(tech);
}