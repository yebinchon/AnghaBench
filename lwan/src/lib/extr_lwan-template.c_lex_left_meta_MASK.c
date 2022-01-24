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
struct lexer {int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEXEME_LEFT_META ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC1 (struct lexer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  left_meta ; 
 void* lex_comment ; 
 void* lex_inside_action ; 
 int FUNC2 (struct lexer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(struct lexer *lexer)
{
    lexer->pos += FUNC3(left_meta);
    int r = FUNC2(lexer);
    if (r == '!')
        return lex_comment;
    FUNC0(lexer);

    FUNC1(lexer, LEXEME_LEFT_META);
    return lex_inside_action;
}