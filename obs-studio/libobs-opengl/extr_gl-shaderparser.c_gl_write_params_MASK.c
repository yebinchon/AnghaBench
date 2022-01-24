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
struct shader_var {int dummy; } ;
struct TYPE_3__ {size_t num; struct shader_var* array; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; TYPE_2__ parser; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,struct shader_var*) ; 

__attribute__((used)) static inline void FUNC2(struct gl_shader_parser *glsp)
{
	size_t i;
	for (i = 0; i < glsp->parser.params.num; i++) {
		struct shader_var *var = glsp->parser.params.array + i;
		FUNC1(glsp, var);
		FUNC0(&glsp->gl_string, ";\n");
	}

	FUNC0(&glsp->gl_string, "\n");
}