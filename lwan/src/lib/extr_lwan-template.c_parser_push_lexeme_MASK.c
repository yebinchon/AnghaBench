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
struct lexeme {int dummy; } ;
struct stacked_lexeme {int /*<<< orphan*/  stack; struct lexeme lexeme; } ;
struct parser {int /*<<< orphan*/  stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct stacked_lexeme* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct parser *parser, struct lexeme *lexeme)
{
    struct stacked_lexeme *stacked_lexeme = FUNC2(sizeof(*stacked_lexeme));
    if (!stacked_lexeme)
        FUNC1("Could not push parser lexeme");

    stacked_lexeme->lexeme = *lexeme;
    FUNC0(&parser->stack, &stacked_lexeme->stack);
}