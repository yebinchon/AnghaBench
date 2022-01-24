#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parser {int dummy; } ;
struct lwan_var_descriptor {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  value; } ;
struct lexeme {TYPE_1__ value; } ;

/* Variables and functions */
 scalar_t__ LEXEME_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct lwan_var_descriptor* FUNC2 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((noinline)) struct lwan_var_descriptor *
FUNC3(struct parser *parser, struct lexeme *lexeme)
{
    if (lexeme->value.len > LEXEME_MAX_LEN) {
        FUNC0("Lexeme exceeds %d characters", LEXEME_MAX_LEN);
        return NULL;
    }

    return FUNC2(parser,
                         FUNC1(lexeme->value.value, lexeme->value.len));
}