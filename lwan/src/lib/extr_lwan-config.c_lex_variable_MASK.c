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
 int /*<<< orphan*/  LEXEME_VARIABLE ; 
 int /*<<< orphan*/  LEXEME_VARIABLE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC2 (struct lexer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 void* lex_config ; 
 void* FUNC4 (struct lexer*,char*) ; 
 void* lex_variable_default ; 
 int FUNC5 (struct lexer*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void *FUNC7(struct lexer *lexer)
{
    int chr;

    FUNC0(lexer, FUNC6("${") - 1);

    do {
        chr = FUNC5(lexer);

        if (chr == ':') {
            FUNC1(lexer);
            FUNC2(lexer, LEXEME_VARIABLE_DEFAULT);
            FUNC0(lexer, FUNC6(":"));
            return lex_variable_default;
        }

        if (chr == '}') {
            FUNC1(lexer);
            FUNC2(lexer, LEXEME_VARIABLE);
            FUNC0(lexer, FUNC6("}"));

            return lex_config;
        }
    } while (FUNC3(chr));

    return FUNC4(lexer, "EOF while scanning for end of variable");
}