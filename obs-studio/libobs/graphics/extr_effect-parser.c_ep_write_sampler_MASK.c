#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t num; char** array; } ;
struct TYPE_3__ {char** array; } ;
struct ep_sampler {int written; char* name; TYPE_2__ values; TYPE_1__ states; } ;
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 

__attribute__((used)) static void FUNC1(struct dstr *shader, struct ep_sampler *sampler)
{
	size_t i;

	if (sampler->written)
		return;

	FUNC0(shader, "sampler_state ");
	FUNC0(shader, sampler->name);
	FUNC0(shader, " {");

	for (i = 0; i < sampler->values.num; i++) {
		FUNC0(shader, "\n\t");
		FUNC0(shader, sampler->states.array[i]);
		FUNC0(shader, " = ");
		FUNC0(shader, sampler->values.array[i]);
		FUNC0(shader, ";\n");
	}

	FUNC0(shader, "\n};\n");
	sampler->written = true;
}