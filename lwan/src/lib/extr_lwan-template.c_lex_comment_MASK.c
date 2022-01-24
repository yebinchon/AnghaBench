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
 int /*<<< orphan*/  left_meta ; 
 void* FUNC1 (struct lexer*,char*) ; 
 void* lex_text ; 
 int FUNC2 (struct lexer*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(struct lexer *lexer)
{
    size_t brackets = FUNC3(left_meta);

    do {
        int r = FUNC2(lexer);
        if (r == '{')
            brackets++;
        else if (r == '}')
            brackets--;
        else if (r == EOF)
            return FUNC1(lexer,
                             "unexpected EOF while scanning comment end");
    } while (brackets);

    FUNC0(lexer);
    return lex_text;
}