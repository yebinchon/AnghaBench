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
struct lexer {int /*<<< orphan*/  pos; int /*<<< orphan*/  start; int /*<<< orphan*/  buffer; } ;
struct lexeme {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct lexeme*) ; 

__attribute__((used)) static void FUNC1(struct lexer *lexer, struct lexeme *lexeme)
{
    if (FUNC0(&lexer->buffer, lexeme))
        lexer->start = lexer->pos;
}