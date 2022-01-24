#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  array; int /*<<< orphan*/  num; } ;
struct TYPE_5__ {TYPE_1__ cur_val; } ;
typedef  TYPE_2__ gs_eparam_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(gs_eparam_t *param, void *data,
					size_t size)
{
	if (!param) {
		FUNC0(LOG_ERROR, "effect_getval_inline: invalid param");
		return;
	}

	if (!data) {
		FUNC0(LOG_ERROR, "effect_getval_inline: invalid data");
		return;
	}

	size_t bytes = FUNC2(size, param->cur_val.num);

	FUNC1(data, param->cur_val.array, bytes);
}