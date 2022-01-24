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
struct parser {int /*<<< orphan*/  lexer; } ;
struct lexeme {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ LEXEME_IDENTIFIER ; 
 scalar_t__ LEXEME_QUESTION_MARK ; 
 scalar_t__ LEXEME_RIGHT_META ; 
 struct lexeme* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct parser*,struct lexeme*) ; 
 void* FUNC2 (struct parser*,struct lexeme*) ; 
 void* FUNC3 (struct lexeme*) ; 

__attribute__((used)) static void *FUNC4(struct parser *parser, struct lexeme *lexeme)
{
    if (lexeme->type == LEXEME_IDENTIFIER) {
        struct lexeme *next;

        if ((next = FUNC0(&parser->lexer))) {
            if (next->type == LEXEME_RIGHT_META)
                return FUNC1(parser, lexeme);

            if (next->type == LEXEME_QUESTION_MARK)
                return FUNC2(parser, lexeme);

            return FUNC3(next);
        }
    }

    return FUNC3(lexeme);
}