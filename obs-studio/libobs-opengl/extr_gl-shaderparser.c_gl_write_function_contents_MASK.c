#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;
struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NAME ; 
 scalar_t__ CFTOKEN_NONE ; 
 scalar_t__ CFTOKEN_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_parser*,struct cf_token**) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_shader_parser*,struct cf_token*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void FUNC4(struct gl_shader_parser *glsp,
				       struct cf_token **p_token,
				       const char *end)
{
	struct cf_token *token = *p_token;

	if (token->type != CFTOKEN_NAME || (!FUNC2(glsp, token) &&
					    !FUNC1(glsp, &token)))
		FUNC0(&glsp->gl_string, &token->str);

	while (token->type != CFTOKEN_NONE) {
		token++;

		if (end && FUNC3(&token->str, end) == 0)
			break;

		if (token->type == CFTOKEN_NAME) {
			if (!FUNC2(glsp, token) &&
			    !FUNC1(glsp, &token))
				FUNC0(&glsp->gl_string, &token->str);

		} else if (token->type == CFTOKEN_OTHER) {
			if (*token->str.array == '{')
				FUNC4(glsp, &token, "}");
			else if (*token->str.array == '(')
				FUNC4(glsp, &token, ")");

			FUNC0(&glsp->gl_string, &token->str);

		} else {
			FUNC0(&glsp->gl_string, &token->str);
		}
	}

	*p_token = token;
}