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
struct obs_source {scalar_t__ async_flip; scalar_t__ async_texrender; int /*<<< orphan*/ ** async_textures; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_FLIP_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct obs_source *source,
					   gs_effect_t *effect)
{
	gs_texture_t *tex = source->async_textures[0];
	gs_eparam_t *param;

	if (source->async_texrender)
		tex = FUNC3(source->async_texrender);

	param = FUNC1(effect, "image");
	FUNC2(param, tex);

	FUNC0(tex, source->async_flip ? GS_FLIP_V : 0, 0, 0);
}