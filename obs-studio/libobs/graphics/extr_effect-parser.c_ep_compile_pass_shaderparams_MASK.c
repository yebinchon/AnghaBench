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
struct pass_shaderparam {int /*<<< orphan*/  sparam; int /*<<< orphan*/  eparam; } ;
struct effect_parser {int /*<<< orphan*/  effect; } ;
struct dstr {int /*<<< orphan*/  array; } ;
struct darray {size_t num; } ;
typedef  int /*<<< orphan*/  gs_shader_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int,struct darray*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,struct darray*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct effect_parser *ep,
					 struct darray *pass_params,
					 struct darray *used_params,
					 gs_shader_t *shader)
{
	size_t i;
	FUNC2(sizeof(struct pass_shaderparam), pass_params,
		      used_params->num);

	for (i = 0; i < pass_params->num; i++) {
		struct dstr *param_name;
		struct pass_shaderparam *param;

		param_name = FUNC1(sizeof(struct dstr), used_params, i);
		param = FUNC1(sizeof(struct pass_shaderparam),
				    pass_params, i);

		param->eparam = FUNC4(ep->effect,
							    param_name->array);
		param->sparam =
			FUNC5(shader, param_name->array);

#if defined(_DEBUG) && defined(_DEBUG_SHADERS)
		debug_param(param->eparam, 0, i, "\t\t\t\t");
#endif

		if (!param->sparam) {
			FUNC0(LOG_ERROR, "Effect shader parameter not found");
			return false;
		}
	}

	return true;
}