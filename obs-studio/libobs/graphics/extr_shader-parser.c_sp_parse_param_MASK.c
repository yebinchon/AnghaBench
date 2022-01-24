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
struct shader_var {int dummy; } ;
struct shader_parser {int /*<<< orphan*/  params; int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct shader_var*) ; 
 int /*<<< orphan*/  FUNC2 (struct shader_var*) ; 
 int /*<<< orphan*/  FUNC3 (struct shader_var*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct shader_parser*,struct shader_var*) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_parser*,struct shader_var*) ; 

__attribute__((used)) static void FUNC6(struct shader_parser *sp, char *type, char *name,
			   bool is_const, bool is_uniform)
{
	struct shader_var param;
	FUNC3(&param, type, name, is_uniform, is_const);

	if (FUNC0(&sp->cfp, ";"))
		goto complete;
	if (FUNC0(&sp->cfp, "[") && !FUNC4(sp, &param))
		goto error;
	if (FUNC0(&sp->cfp, "=") && !FUNC5(sp, &param))
		goto error;
	if (!FUNC0(&sp->cfp, ";"))
		goto error;

complete:
	FUNC1(sp->params, &param);
	return;

error:
	FUNC2(&param);
}