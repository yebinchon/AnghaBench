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
struct nn_parse_context {struct nn_option* options; TYPE_1__* def; } ;
struct nn_option {char* longname; char* group; int shortname; char* metavar; char* description; } ;
struct TYPE_2__ {char* short_description; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nn_option*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_parse_context*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7 (struct nn_parse_context *ctx, FILE *stream)
{
    int i;
    size_t optlen;
    struct nn_option *opt;
    char *last_group;
    char *cursor;

    FUNC0 (stream, "Usage:\n");
    FUNC4 (ctx, stream);
    FUNC0 (stream, "\n%s\n", ctx->def->short_description);

    last_group = NULL;
    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (!last_group || last_group != opt->group ||
            FUNC5 (last_group, opt->group))
        {
            FUNC0 (stream, "\n");
            FUNC0 (stream, "%s:\n", opt->group);
            last_group = opt->group;
        }
        FUNC0 (stream, " --%s", opt->longname);
        optlen = 3 + FUNC6 (opt->longname);
        if (opt->shortname) {
            FUNC0 (stream, ",-%c", opt->shortname);
            optlen += 3;
        }
        if (FUNC2 (opt)) {
            if (opt->metavar) {
                FUNC0 (stream, " %s", opt->metavar);
                optlen += FUNC6 (opt->metavar) + 1;
            } else {
                FUNC0 (stream, " ARG");
                optlen += 4;
            }
        }
        if (optlen < 23) {
            FUNC1 (&"                        "[optlen], stream);
            cursor = FUNC3 (stream, opt->description, 80-24);
        } else {
            cursor = opt->description;
        }
        while (*cursor) {
            FUNC0 (stream, "\n                        ");
            cursor = FUNC3 (stream, cursor, 80-24);
        }
        FUNC0 (stream, "\n");
    }
}