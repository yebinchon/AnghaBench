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
struct ep_var {scalar_t__ var_type; char* type; char* name; char* mapping; } ;
struct dstr {int dummy; } ;

/* Variables and functions */
 scalar_t__ EP_VAR_INOUT ; 
 scalar_t__ EP_VAR_OUT ; 
 scalar_t__ EP_VAR_UNIFORM ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 

__attribute__((used)) static inline void FUNC1(struct dstr *shader, struct ep_var *var)
{
	if (var->var_type == EP_VAR_INOUT)
		FUNC0(shader, "inout ");
	else if (var->var_type == EP_VAR_OUT)
		FUNC0(shader, "out ");
	else if (var->var_type == EP_VAR_UNIFORM)
		FUNC0(shader, "uniform ");
	// The "in" input modifier is implied by default, so leave it blank
	// in that case.

	FUNC0(shader, var->type);
	FUNC0(shader, " ");
	FUNC0(shader, var->name);

	if (var->mapping) {
		FUNC0(shader, " : ");
		FUNC0(shader, var->mapping);
	}
}