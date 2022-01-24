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
struct ep_sampler {int dummy; } ;
struct TYPE_2__ {size_t num; char** array; } ;
struct ep_func {TYPE_1__ sampler_deps; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 struct ep_sampler* FUNC1 (struct effect_parser*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct ep_sampler*) ; 

__attribute__((used)) static inline void FUNC3(struct effect_parser *ep,
					      struct dstr *shader,
					      struct ep_func *func)
{
	size_t i;
	for (i = 0; i < func->sampler_deps.num; i++) {
		const char *name = func->sampler_deps.array[i];

		struct ep_sampler *sampler = FUNC1(ep, name);
		FUNC2(shader, sampler);
		FUNC0(shader, "\n");
	}
}