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
struct obs_core_audio {int /*<<< orphan*/  render_order; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 scalar_t__ DARRAY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(obs_source_t *parent, obs_source_t *source, void *p)
{
	struct obs_core_audio *audio = p;

	if (FUNC1(audio->render_order, &source, 0) == DARRAY_INVALID) {
		obs_source_t *s = FUNC3(source);
		if (s)
			FUNC2(audio->render_order, &s);
	}

	FUNC0(parent);
}