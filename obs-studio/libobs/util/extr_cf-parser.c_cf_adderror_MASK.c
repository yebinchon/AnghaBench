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
typedef  int /*<<< orphan*/  uint32_t ;
struct dstr {char const* array; } ;
struct cf_parser {TYPE_3__* cur_token; int /*<<< orphan*/  error_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  array; } ;
struct TYPE_6__ {TYPE_2__* lex; TYPE_1__ unmerged_str; } ;
struct TYPE_5__ {int /*<<< orphan*/  file; int /*<<< orphan*/  base_lexer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct cf_parser *p, const char *error, int level,
		 const char *val1, const char *val2, const char *val3)
{
	uint32_t row, col;
	FUNC4(&p->cur_token->lex->base_lexer,
			   p->cur_token->unmerged_str.array, &row, &col);

	if (!val1 && !val2 && !val3) {
		FUNC3(&p->error_list, p->cur_token->lex->file, row,
			       col, error, level);
	} else {
		struct dstr formatted;
		FUNC1(&formatted);
		FUNC2(&formatted, error, val1, val2, val3, NULL);

		FUNC3(&p->error_list, p->cur_token->lex->file, row,
			       col, formatted.array, level);

		FUNC0(&formatted);
	}
}