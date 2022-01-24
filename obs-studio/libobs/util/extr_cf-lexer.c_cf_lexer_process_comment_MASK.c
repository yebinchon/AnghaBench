#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* array; size_t len; } ;
struct TYPE_4__ {int len; } ;
struct cf_token {int /*<<< orphan*/  type; TYPE_2__ unmerged_str; TYPE_1__ str; } ;
struct TYPE_6__ {char* offset; } ;
struct cf_lexer {int unexpected_eof; TYPE_3__ base_lexer; int /*<<< orphan*/  write_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFTOKEN_SPACETAB ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC4(struct cf_lexer *lex,
				     struct cf_token *out_token)
{
	const char *offset;

	if (!FUNC0(out_token->unmerged_str.array))
		return false;

	offset = lex->base_lexer.offset;
	FUNC1(&offset);

	FUNC3(lex->write_offset++, " ");
	out_token->str.len = 1;

	if (*offset == '/') {
		while (*++offset && !FUNC2(*offset))
			FUNC1(&offset);

	} else if (*offset == '*') {
		bool was_star = false;
		lex->unexpected_eof = true;

		while (*++offset) {
			FUNC1(&offset);

			if (was_star && *offset == '/') {
				offset++;
				lex->unexpected_eof = false;
				break;
			} else {
				was_star = (*offset == '*');
			}
		}
	}

	out_token->unmerged_str.len +=
		(size_t)(offset - out_token->unmerged_str.array);
	out_token->type = CFTOKEN_SPACETAB;
	lex->base_lexer.offset = offset;

	return true;
}