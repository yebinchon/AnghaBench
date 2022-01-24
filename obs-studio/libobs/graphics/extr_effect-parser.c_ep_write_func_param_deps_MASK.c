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
struct ep_param {int dummy; } ;
struct TYPE_2__ {size_t num; char** array; } ;
struct ep_func {TYPE_1__ param_deps; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;
struct darray {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 struct ep_param* FUNC1 (struct effect_parser*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct ep_param*,struct darray*) ; 

__attribute__((used)) static inline void FUNC3(struct effect_parser *ep,
					    struct dstr *shader,
					    struct ep_func *func,
					    struct darray *used_params)
{
	size_t i;
	for (i = 0; i < func->param_deps.num; i++) {
		const char *name = func->param_deps.array[i];
		struct ep_param *param = FUNC1(ep, name);
		FUNC2(shader, param, used_params);
	}

	if (func->param_deps.num)
		FUNC0(shader, "\n\n");
}