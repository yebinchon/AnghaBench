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
struct lexer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEXEME_CLOSE_CURLY_BRACE ; 
 int /*<<< orphan*/  LEXEME_OPEN_CURLY_BRACE ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct lexer*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lexer*) ; 
 void* lex_inside_action ; 
 int FUNC3 (struct lexer*) ; 

__attribute__((used)) static void *FUNC4(struct lexer *lexer)
{
    int r;

    FUNC0(lexer, LEXEME_OPEN_CURLY_BRACE);
    FUNC2(lexer);

    r = FUNC3(lexer);
    if (r != '}')
        return FUNC1(lexer, "expecting `}', found `%c'", r);

    FUNC0(lexer, LEXEME_CLOSE_CURLY_BRACE);
    return lex_inside_action;
}