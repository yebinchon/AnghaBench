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
 int /*<<< orphan*/  FUNC0 (struct lexer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* lex_config ; 
 int /*<<< orphan*/  FUNC2 (struct lexer*) ; 

__attribute__((used)) static void *FUNC3(struct lexer *lexer)
{
    while (FUNC1(FUNC2(lexer)))
        ;
    FUNC0(lexer);
    return lex_config;
}