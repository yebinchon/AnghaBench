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
struct ep_param {int written; char* name; char* type; scalar_t__ array_count; scalar_t__ is_uniform; scalar_t__ is_const; } ;
struct dstr {int dummy; } ;
struct darray {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct darray*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 

__attribute__((used)) static inline void FUNC4(struct dstr *shader, struct ep_param *param,
				  struct darray *used_params)
{
	if (param->written)
		return;

	if (param->is_const) {
		FUNC1(shader, "const ");
	} else if (param->is_uniform) {
		struct dstr new;
		FUNC3(&new, param->name);
		FUNC0(sizeof(struct dstr), used_params, &new);

		FUNC1(shader, "uniform ");
	}

	FUNC1(shader, param->type);
	FUNC1(shader, " ");
	FUNC1(shader, param->name);

	if (param->array_count)
		FUNC2(shader, "[%u]", param->array_count);

	FUNC1(shader, ";\n");

	param->written = true;
}