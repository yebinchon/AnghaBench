#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* array; size_t len; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  array; } ;
struct cf_token {int /*<<< orphan*/  type; TYPE_2__ unmerged_str; TYPE_1__ str; } ;
struct TYPE_7__ {char* offset; } ;
struct cf_lexer {TYPE_3__ base_lexer; int /*<<< orphan*/  write_offset; } ;
struct TYPE_8__ {char* array; scalar_t__ len; } ;
struct base_token {TYPE_4__ text; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASETOKEN_ALPHA ; 
 int /*<<< orphan*/  PARSE_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (struct base_token*) ; 
 int /*<<< orphan*/  FUNC1 (struct base_token*,struct base_token*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_token*,struct base_token*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct base_token*,struct base_token*) ; 
 scalar_t__ FUNC5 (struct cf_lexer*,struct cf_token*) ; 
 scalar_t__ FUNC6 (struct cf_lexer*,struct cf_token*) ; 
 int /*<<< orphan*/  FUNC7 (struct cf_lexer*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct cf_token*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,struct base_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static bool FUNC11(struct cf_lexer *lex, struct cf_token *out_token)
{
	struct base_token token, start_token;
	bool wrote_data = false;

	FUNC0(&token);
	FUNC0(&start_token);
	FUNC8(out_token);

	while (FUNC9(&lex->base_lexer, &token, PARSE_WHITESPACE)) {
		/* reclassify underscore as alpha for alnum tokens */
		if (*token.text.array == '_')
			token.type = BASETOKEN_ALPHA;

		/* ignore escaped newlines to merge spliced lines */
		if (FUNC3(token.text.array)) {
			lex->base_lexer.offset +=
				FUNC10(token.text.array + 1);
			continue;
		}

		if (!wrote_data) {
			out_token->unmerged_str.array = token.text.array;
			out_token->str.array = lex->write_offset;

			/* if comment then output a space */
			if (FUNC5(lex, out_token))
				return true;

			/* process string tokens if any */
			if (FUNC6(lex, out_token))
				return true;

			FUNC1(&start_token, &token);
			wrote_data = true;

		} else if (FUNC4(&start_token, &token)) {
			lex->base_lexer.offset -= token.text.len;
			break;
		}

		/* write token to CF lexer to account for splicing/comments */
		FUNC7(lex, &token.text);
		out_token->str.len += token.text.len;
	}

	if (wrote_data) {
		out_token->unmerged_str.len = (size_t)(
			lex->base_lexer.offset - out_token->unmerged_str.array);
		out_token->type = FUNC2(out_token, &start_token);
	}

	return wrote_data;
}