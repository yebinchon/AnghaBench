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
struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct cf_preprocessor {int /*<<< orphan*/  defines; scalar_t__ ignore_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  da; } ;
struct cf_def {TYPE_2__ tokens; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NAME ; 
 scalar_t__ CFTOKEN_NEWLINE ; 
 scalar_t__ CFTOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_preprocessor*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_preprocessor*,struct cf_token*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cf_def*) ; 
 int /*<<< orphan*/  FUNC5 (struct cf_def*) ; 
 int /*<<< orphan*/  FUNC6 (struct cf_preprocessor*,struct cf_def*,struct cf_token**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cf_def*) ; 
 int /*<<< orphan*/  FUNC9 (struct cf_token**) ; 
 int /*<<< orphan*/  FUNC10 (struct cf_token**,int) ; 

__attribute__((used)) static void FUNC11(struct cf_preprocessor *pp,
				 struct cf_token **p_cur_token)
{
	struct cf_token *cur_token = *p_cur_token;
	struct cf_def def;

	if (pp->ignore_state) {
		FUNC9(p_cur_token);
		return;
	}

	FUNC5(&def);

	FUNC10(&cur_token, true);
	if (cur_token->type != CFTOKEN_NAME) {
		FUNC2(pp, cur_token, "identifier");
		FUNC9(&cur_token);
		goto exit;
	}

	FUNC1(pp, &def.tokens.da, NULL);
	FUNC7(&def.name, cur_token);

	if (!FUNC10(&cur_token, true))
		goto complete;

	/* process macro */
	if (*cur_token->str.array == '(') {
		if (!FUNC6(pp, &def, &cur_token))
			goto error;
	}

	while (cur_token->type != CFTOKEN_NEWLINE &&
	       cur_token->type != CFTOKEN_NONE)
		FUNC3(&def, cur_token++);

complete:
	FUNC0(&def.tokens.da);
	FUNC1(pp, &def.tokens.da, NULL);
	FUNC8(pp->defines, &def);
	goto exit;

error:
	FUNC4(&def);

exit:
	*p_cur_token = cur_token;
}