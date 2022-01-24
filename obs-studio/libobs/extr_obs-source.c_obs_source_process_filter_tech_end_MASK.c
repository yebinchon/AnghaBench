#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  output_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  filter_texrender; int /*<<< orphan*/  allow_direct; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

void FUNC6(obs_source_t *filter,
					gs_effect_t *effect, uint32_t width,
					uint32_t height, const char *tech_name)
{
	obs_source_t *target, *parent;
	gs_texture_t *texture;
	uint32_t parent_flags;

	if (!filter)
		return;

	target = FUNC3(filter);
	parent = FUNC2(filter);

	if (!target || !parent)
		return;

	parent_flags = parent->info.output_flags;

	const char *tech = tech_name ? tech_name : "Draw";

	if (FUNC0(target, parent, parent_flags, filter->allow_direct)) {
		FUNC4(target, effect, tech);
	} else {
		texture = FUNC1(filter->filter_texrender);
		if (texture) {
			FUNC5(texture, effect, width, height, tech);
		}
	}
}