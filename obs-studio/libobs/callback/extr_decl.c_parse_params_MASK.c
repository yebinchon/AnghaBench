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
struct decl_info {int dummy; } ;
struct cf_token {scalar_t__ type; } ;
struct cf_parser {int dummy; } ;

/* Variables and functions */
 scalar_t__ CFTOKEN_NAME ; 
 int PARSE_CONTINUE ; 
 int PARSE_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct cf_parser*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cf_parser*) ; 
 int /*<<< orphan*/  FUNC2 (struct cf_parser*,struct cf_token*) ; 
 scalar_t__ FUNC3 (struct cf_parser*,char*) ; 
 int FUNC4 (struct cf_parser*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cf_parser*,struct decl_info*) ; 

__attribute__((used)) static void FUNC6(struct cf_parser *cfp, struct decl_info *decl)
{
	struct cf_token peek;
	int code;

	if (!FUNC2(cfp, &peek))
		return;

	while (peek.type == CFTOKEN_NAME) {
		code = FUNC5(cfp, decl);
		if (code == PARSE_EOF)
			return;

		if (code != PARSE_CONTINUE && !FUNC1(cfp))
			return;

		if (FUNC3(cfp, ")"))
			break;
		else if (FUNC4(cfp, ",", ",", NULL) == PARSE_EOF)
			return;

		if (!FUNC2(cfp, &peek))
			return;
	}

	if (!FUNC3(cfp, ")"))
		FUNC0(cfp, ")", NULL, NULL);
}