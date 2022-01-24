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
 int /*<<< orphan*/  LEXEME_RIGHT_META ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*,int /*<<< orphan*/ ) ; 
 void* lex_text ; 
 int /*<<< orphan*/  right_meta ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct lexer *lexer)
{
    lexer->pos += FUNC1(right_meta);
    FUNC0(lexer, LEXEME_RIGHT_META);
    return lex_text;
}