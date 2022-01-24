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
struct gs_effect_param {int /*<<< orphan*/  type; int /*<<< orphan*/  default_val; int /*<<< orphan*/  effect; int /*<<< orphan*/  section; int /*<<< orphan*/  name; } ;
struct ep_param {int /*<<< orphan*/  type; int /*<<< orphan*/  default_val; int /*<<< orphan*/  name; } ;
struct effect_parser {int /*<<< orphan*/  effect; } ;
struct darray {size_t num; scalar_t__ array; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFFECT_ANNOTATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct darray*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct gs_effect_param*,struct ep_param*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct darray *ep_annotations,
				   struct darray *gsp_annotations,
				   struct effect_parser *ep)
{
	FUNC2(sizeof(struct gs_effect_param), gsp_annotations,
		      ep_annotations->num);

	size_t i;
	for (i = 0; i < ep_annotations->num; i++) {
		struct gs_effect_param *param =
			((struct gs_effect_param *)gsp_annotations->array) + i;
		struct ep_param *param_in =
			((struct ep_param *)ep_annotations->array) + i;

		param->name = FUNC0(param_in->name);
		param->section = EFFECT_ANNOTATION;
		param->effect = ep->effect;
		FUNC1(param->default_val, param_in->default_val);

		param->type = FUNC4(param_in->type);

#if defined(_DEBUG) && defined(_DEBUG_SHADERS)
		debug_param(param, param_in, i, "\t\t");
#endif
	}
}