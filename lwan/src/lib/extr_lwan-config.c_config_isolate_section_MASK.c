#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lexer {char const* start; char const* pos; char const* end; } ;
struct config_line {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  strbuf; struct lexer lexer; } ;
struct TYPE_3__ {scalar_t__ sz; int /*<<< orphan*/ * addr; } ;
struct config {TYPE_2__ parser; TYPE_1__ mapped; } ;

/* Variables and functions */
 scalar_t__ CONFIG_LINE_TYPE_SECTION ; 
 int /*<<< orphan*/  FUNC0 (struct config*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct config*) ; 
 int /*<<< orphan*/  FUNC2 (struct config*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct config* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct config*,struct config*,int) ; 

struct config *FUNC7(struct config *current_conf,
                                      const struct config_line *current_line)
{
    struct lexer *lexer;
    struct config *isolated;
    const char *pos;

    if (current_line->type != CONFIG_LINE_TYPE_SECTION)
        return NULL;

    isolated = FUNC5(sizeof(*isolated));
    if (!isolated)
        return NULL;

    FUNC6(isolated, current_conf, sizeof(*isolated));
    FUNC4(&isolated->parser.strbuf);

    isolated->mapped.addr = NULL;
    isolated->mapped.sz = 0;

    lexer = &isolated->parser.lexer;
    lexer->start = lexer->pos;

    pos = isolated->parser.lexer.pos;
    if (!FUNC1(isolated)) {
        FUNC3(&isolated->parser.strbuf);
        FUNC2(isolated);

        FUNC0(current_conf,
                     "Could not find section end while trying to isolate");

        return NULL;
    }

    lexer->end = lexer->pos;
    lexer->start = lexer->pos = pos;

    return isolated;
}