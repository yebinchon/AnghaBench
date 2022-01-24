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
struct TYPE_4__ {int /*<<< orphan*/  da; } ;
struct cf_preprocessor {TYPE_2__ tokens; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NEWLINE ; 
 scalar_t__ CFTOKEN_NONE ; 
 scalar_t__ CFTOKEN_SPACETAB ; 
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_preprocessor*,int /*<<< orphan*/ *,struct cf_token**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_preprocessor*,int,struct cf_token**) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_token**) ; 
 int /*<<< orphan*/  FUNC4 (struct cf_token**,int) ; 

__attribute__((used)) static void FUNC5(struct cf_preprocessor *pp, bool if_block,
				 struct cf_token **p_cur_token)
{
	bool newline = true;
	bool preprocessor_line = if_block;
	struct cf_token *cur_token = *p_cur_token;

	while (cur_token->type != CFTOKEN_NONE) {
		if (cur_token->type != CFTOKEN_SPACETAB &&
		    cur_token->type != CFTOKEN_NEWLINE) {
			if (preprocessor_line) {
				FUNC0(pp, cur_token);
				if (!FUNC3(&cur_token))
					break;
			}

			if (newline && *cur_token->str.array == '#') {
				FUNC4(&cur_token, true);
				preprocessor_line = true;
				if (!FUNC2(pp, if_block, &cur_token))
					break;

				continue;
			}

			newline = false;
		}

		if (cur_token->type == CFTOKEN_NEWLINE) {
			newline = true;
			preprocessor_line = false;
		} else if (cur_token->type == CFTOKEN_NONE) {
			break;
		}

		FUNC1(pp, &pp->tokens.da, &cur_token, NULL,
				       NULL);
	}

	*p_cur_token = cur_token;
}