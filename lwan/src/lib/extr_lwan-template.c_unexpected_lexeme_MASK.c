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
struct TYPE_2__ {int /*<<< orphan*/  value; scalar_t__ len; } ;
struct lexeme {size_t type; TYPE_1__ value; } ;

/* Variables and functions */
 size_t LEXEME_ERROR ; 
 void* FUNC0 (struct lexeme*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lexeme_type_str ; 

__attribute__((used)) static void *FUNC1(struct lexeme *lexeme)
{
    if (lexeme->type == LEXEME_ERROR)
        return NULL;

    return FUNC0(lexeme, "unexpected lexeme: %s [%.*s]",
                        lexeme_type_str[lexeme->type], (int)lexeme->value.len,
                        lexeme->value.value);
}