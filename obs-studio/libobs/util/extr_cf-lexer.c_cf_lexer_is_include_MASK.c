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
struct TYPE_4__ {char* array; } ;
struct cf_token {TYPE_2__ str; } ;
struct TYPE_3__ {size_t num; struct cf_token* array; } ;
struct cf_lexer {TYPE_1__ tokens; } ;

/* Variables and functions */
 int FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*) ; 

__attribute__((used)) static bool FUNC3(struct cf_lexer *lex)
{
	bool found_include_import = false;
	bool found_preprocessor = false;
	size_t i;

	for (i = lex->tokens.num; i > 0; i--) {
		struct cf_token *token = lex->tokens.array + (i - 1);

		if (FUNC1(*token->str.array))
			continue;

		if (!found_include_import) {
			if (FUNC2(&token->str, "include") != 0 &&
			    FUNC2(&token->str, "import") != 0)
				break;

			found_include_import = true;

		} else if (!found_preprocessor) {
			if (*token->str.array != '#')
				break;

			found_preprocessor = true;

		} else {
			return FUNC0(*token->str.array);
		}
	}

	/* if starting line */
	return found_preprocessor && found_include_import;
}