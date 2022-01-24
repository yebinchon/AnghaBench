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
struct lexer {scalar_t__ pos; scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LEXEME_EOF ; 
 int /*<<< orphan*/  LEXEME_TEXT ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  left_meta ; 
 void* FUNC1 (struct lexer*,char*) ; 
 void* lex_left_meta ; 
 scalar_t__ FUNC2 (struct lexer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct lexer*) ; 
 int /*<<< orphan*/  right_meta ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(struct lexer *lexer)
{
    do {
        if (FUNC2(lexer, left_meta, FUNC4(left_meta))) {
            if (lexer->pos > lexer->start)
                FUNC0(lexer, LEXEME_TEXT);
            return lex_left_meta;
        }

        if (FUNC2(lexer, right_meta, FUNC4(right_meta)))
            return FUNC1(lexer, "unexpected action close sequence");
    } while (FUNC3(lexer) != EOF);
    if (lexer->pos > lexer->start)
        FUNC0(lexer, LEXEME_TEXT);
    FUNC0(lexer, LEXEME_EOF);
    return NULL;
}