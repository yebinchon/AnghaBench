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
struct parser {int template_flags; } ;
struct lwan_strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  value; } ;
struct lexeme {TYPE_1__ value; } ;

/* Variables and functions */
 int LWAN_TPL_FLAG_CONST_TEMPLATE ; 
 struct lwan_strbuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lwan_strbuf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lwan_strbuf *FUNC3(struct parser *parser,
                                                   struct lexeme *lexeme)
{
    if (parser->template_flags & LWAN_TPL_FLAG_CONST_TEMPLATE)
        return FUNC0(lexeme->value.value, lexeme->value.len);

    struct lwan_strbuf *buf = FUNC1(lexeme->value.len);
    if (buf)
        FUNC2(buf, lexeme->value.value, lexeme->value.len);

    return buf;
}