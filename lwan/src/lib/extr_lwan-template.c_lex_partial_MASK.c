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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (struct lexer*) ; 
 int /*<<< orphan*/  FUNC1 (struct lexer*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (struct lexer*,char*,...) ; 
 void* lex_identifier ; 
 int FUNC5 (struct lexer*) ; 

__attribute__((used)) static void *FUNC6(struct lexer *lexer)
{
    while (true) {
        int r = FUNC5(lexer);

        if (r == EOF)
            return FUNC4(lexer, "unexpected EOF while scanning action");
        if (r == '\n')
            return FUNC4(lexer, "actions cannot span multiple lines");
        if (FUNC3(r)) {
            FUNC1(lexer);
            continue;
        }
        if (FUNC2(r)) {
            FUNC0(lexer);
            return lex_identifier;
        }
        return FUNC4(lexer, "unexpected character: %c", r);
    }
}