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
 void* lex_config ; 
 void* FUNC3 (struct lexer*,char*) ; 
 int FUNC4 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void *FUNC6(struct lexer *lexer)
{
    int chr;

    do {
        chr = FUNC4(lexer);

        if (chr == '}') {
            FUNC1(lexer);
            FUNC2(lexer, LEXEME_STRING);

            FUNC0(lexer, FUNC5("}"));

            return lex_config;
        }
    } while (chr != '\0');

    return FUNC3(lexer, "EOF while scanning for end of variable");
}