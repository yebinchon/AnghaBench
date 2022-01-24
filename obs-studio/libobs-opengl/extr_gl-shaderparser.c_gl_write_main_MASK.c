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
struct shader_func {int dummy; } ;
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_shader_parser*,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shader_parser*,struct shader_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_shader_parser*,struct shader_func*) ; 

__attribute__((used)) static void FUNC5(struct gl_shader_parser *glsp,
			  struct shader_func *main)
{
	FUNC0(&glsp->gl_string, "void main(void)\n{\n");

	FUNC4(glsp, main);
	FUNC2(glsp, main);
	FUNC1(glsp, main);
	FUNC3(glsp, main);

	FUNC0(&glsp->gl_string, "}\n");
}