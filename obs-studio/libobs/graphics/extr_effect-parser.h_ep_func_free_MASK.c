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
struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ep_func {TYPE_1__ sampler_deps; TYPE_1__ param_deps; TYPE_1__ struct_deps; TYPE_1__ func_deps; TYPE_1__ param_vars; int /*<<< orphan*/  contents; int /*<<< orphan*/  mapping; int /*<<< orphan*/  ret_type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct ep_func *epf)
{
	size_t i;
	for (i = 0; i < epf->param_vars.num; i++)
		FUNC3(epf->param_vars.array + i);

	FUNC0(epf->name);
	FUNC0(epf->ret_type);
	FUNC0(epf->mapping);
	FUNC2(&epf->contents);
	FUNC1(epf->param_vars);
	FUNC1(epf->func_deps);
	FUNC1(epf->struct_deps);
	FUNC1(epf->param_deps);
	FUNC1(epf->sampler_deps);
}