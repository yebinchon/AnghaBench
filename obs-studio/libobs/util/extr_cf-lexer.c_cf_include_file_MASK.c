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
struct dstr {int /*<<< orphan*/  array; scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  array; } ;
struct cf_token {TYPE_1__ str; } ;
struct TYPE_4__ {size_t num; struct cf_lexer* array; } ;
struct cf_preprocessor {TYPE_2__ dependencies; } ;
struct cf_lexer {int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_preprocessor*,struct cf_token const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cf_token* FUNC2 (struct cf_lexer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_lexer*) ; 
 int /*<<< orphan*/  FUNC4 (struct cf_lexer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cf_preprocessor*,int,struct cf_token**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__,struct cf_lexer*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dstr*,struct dstr*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct cf_preprocessor*,struct dstr*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct cf_preprocessor *pp,
			    const struct cf_token *file_token)
{
	struct cf_lexer new_lex;
	struct dstr str_file;
	FILE *file;
	char *file_data;
	struct cf_token *tokens;
	size_t i;

	FUNC9(&str_file);
	FUNC7(&str_file, &file_token->str);
	FUNC10(&str_file, &str_file, 1, str_file.len - 2);
	FUNC12(pp, &str_file);

	/* if dependency already exists, run preprocessor on it */
	for (i = 0; i < pp->dependencies.num; i++) {
		struct cf_lexer *dep = pp->dependencies.array + i;

		if (FUNC15(dep->file, str_file.array) == 0) {
			tokens = FUNC2(dep);
			FUNC5(pp, false, &tokens);
			goto exit;
		}
	}

	file = FUNC13(str_file.array, "rb");
	if (!file) {
		FUNC1(pp, file_token, "Could not open file '$1'",
			    file_token->str.array, NULL, NULL);
		goto exit;
	}

	FUNC14(file, &file_data);
	FUNC11(file);

	FUNC3(&new_lex);
	FUNC4(&new_lex, file_data, str_file.array);
	tokens = FUNC2(&new_lex);
	FUNC5(pp, false, &tokens);
	FUNC0(file_data);

	FUNC6(pp->dependencies, &new_lex);

exit:
	FUNC8(&str_file);
}