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
typedef  int /*<<< orphan*/  uint32_t ;
struct dstr {char const* array; } ;
struct cf_token {TYPE_1__* lex; } ;
struct cf_preprocessor {int /*<<< orphan*/  ed; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_preprocessor*,struct cf_token const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC5(struct cf_preprocessor *pp, const struct cf_token *token,
		     const char *message, int error_level, const char *val1,
		     const char *val2, const char *val3)
{
	uint32_t row, col;
	FUNC0(pp, token, &row, &col);

	if (!val1 && !val2 && !val3) {
		FUNC4(pp->ed, token->lex->file, row, col, message,
			       error_level);
	} else {
		struct dstr formatted;
		FUNC2(&formatted);
		FUNC3(&formatted, message, val1, val2, val3, NULL);

		FUNC4(pp->ed, token->lex->file, row, col,
			       formatted.array, error_level);
		FUNC1(&formatted);
	}
}