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
struct TYPE_2__ {char* array; } ;
struct cf_token {TYPE_1__ unmerged_str; } ;
struct cf_lexer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cf_lexer*,struct cf_token*,char,int) ; 
 scalar_t__ FUNC1 (struct cf_lexer*) ; 

__attribute__((used)) static bool FUNC2(struct cf_lexer *lex,
				    struct cf_token *out_token)
{
	char ch = *out_token->unmerged_str.array;

	if (ch == '<' && FUNC1(lex)) {
		FUNC0(lex, out_token, '>', false);
		return true;

	} else if (ch == '"' || ch == '\'') {
		FUNC0(lex, out_token, ch,
				     !FUNC1(lex));
		return true;
	}

	return false;
}