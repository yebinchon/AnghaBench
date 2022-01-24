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
struct lexer {int pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEXEME_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct lexer*,int /*<<< orphan*/ ) ; 
 void* lex_config ; 
 void* FUNC2 (struct lexer*,char*) ; 
 scalar_t__ FUNC3 (struct lexer*,char const*,int) ; 
 char FUNC4 (struct lexer*) ; 
 char FUNC5 (struct lexer*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void *FUNC7(struct lexer *lexer)
{
    const char *end = (FUNC5(lexer) == '"') ? "\"\"\"" : "'''";

    FUNC0(lexer, FUNC6("'''") - 1);

    do {
        if (FUNC3(lexer, end, 3)) {
            FUNC1(lexer, LEXEME_STRING);
            lexer->pos += 3;

            return lex_config;
        }
    } while (FUNC4(lexer) != '\0');

    return FUNC2(lexer, "EOF while scanning multiline string");
}