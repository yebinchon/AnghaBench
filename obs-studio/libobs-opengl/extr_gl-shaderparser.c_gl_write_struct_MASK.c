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
struct shader_var {int dummy; } ;
struct TYPE_2__ {size_t num; struct shader_var* array; } ;
struct shader_struct {char* name; TYPE_1__ vars; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,struct shader_var*) ; 

__attribute__((used)) static void FUNC2(struct gl_shader_parser *glsp,
			    struct shader_struct *st)
{
	size_t i;
	FUNC0(&glsp->gl_string, "struct ");
	FUNC0(&glsp->gl_string, st->name);
	FUNC0(&glsp->gl_string, " {\n");

	for (i = 0; i < st->vars.num; i++) {
		struct shader_var *var = st->vars.array + i;

		FUNC0(&glsp->gl_string, "\t");
		FUNC1(glsp, var);
		FUNC0(&glsp->gl_string, ";\n");
	}

	FUNC0(&glsp->gl_string, "};\n\n");
}