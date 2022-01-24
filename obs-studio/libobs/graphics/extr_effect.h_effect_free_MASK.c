#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t num; scalar_t__ array; } ;
struct TYPE_4__ {int /*<<< orphan*/ * effect_dir; int /*<<< orphan*/ * effect_path; TYPE_3__ techniques; TYPE_3__ params; } ;
typedef  TYPE_1__ gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(gs_effect_t *effect)
{
	size_t i;
	for (i = 0; i < effect->params.num; i++)
		FUNC2(effect->params.array + i);
	for (i = 0; i < effect->techniques.num; i++)
		FUNC3(effect->techniques.array + i);

	FUNC1(effect->params);
	FUNC1(effect->techniques);

	FUNC0(effect->effect_path);
	FUNC0(effect->effect_dir);
	effect->effect_path = NULL;
	effect->effect_dir = NULL;
}