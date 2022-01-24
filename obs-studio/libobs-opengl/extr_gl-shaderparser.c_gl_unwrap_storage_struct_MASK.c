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
struct shader_struct {TYPE_1__ vars; } ;
struct gl_shader_parser {int dummy; } ;
struct dstr {int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_shader_parser*,struct shader_var*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gl_shader_parser *glsp,
				     struct shader_struct *st, const char *name,
				     bool input, const char *prefix)
{
	struct dstr prefix_str;
	size_t i;

	FUNC3(&prefix_str);
	if (prefix)
		FUNC1(&prefix_str, prefix);
	FUNC0(&prefix_str, name);
	FUNC0(&prefix_str, "_");

	for (i = 0; i < st->vars.num; i++) {
		struct shader_var *st_var = st->vars.array + i;
		FUNC4(glsp, st_var, input, prefix_str.array);
	}

	FUNC2(&prefix_str);
}