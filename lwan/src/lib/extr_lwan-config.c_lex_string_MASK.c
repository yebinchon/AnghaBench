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
 int /*<<< orphan*/  LEXEME_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC2 (struct lexer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 void* lex_config ; 
 void* lex_variable ; 
 int FUNC4 (struct lexer*) ; 
 char FUNC5 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void *FUNC7(struct lexer *lexer)
{
    int chr;

    do {
        chr = FUNC4(lexer);

        if (chr == '$' && FUNC5(lexer) == '{') {
            FUNC1(lexer);
            FUNC2(lexer, LEXEME_STRING);

            FUNC0(lexer, FUNC6("{"));

            return lex_variable;
        }
    } while (FUNC3(chr));

    FUNC1(lexer);
    FUNC2(lexer, LEXEME_STRING);

    return lex_config;
}