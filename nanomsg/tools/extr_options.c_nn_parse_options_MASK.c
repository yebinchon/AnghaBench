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
struct nn_parse_context {int argc; char** argv; int args_left; char** arg; int /*<<< orphan*/  last_option_usage; scalar_t__ mask; TYPE_1__* options; int /*<<< orphan*/  requires; void* target; struct nn_commandline* def; } ;
struct nn_commandline {int /*<<< orphan*/  required_options; TYPE_1__* options; } ;
struct TYPE_2__ {scalar_t__ longname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_parse_context*) ; 
 scalar_t__ FUNC3 (struct nn_parse_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_parse_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_parse_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_parse_context*) ; 

void FUNC7 (struct nn_commandline *cline,
    void *target, int argc, char **argv)
{
    struct nn_parse_context ctx;
    int num_options;

    ctx.def = cline;
    ctx.options = cline->options;
    ctx.target = target;
    ctx.argc = argc;
    ctx.argv = argv;
    ctx.requires = cline->required_options;

    for (num_options = 0; ctx.options[num_options].longname; ++num_options);
    ctx.last_option_usage = FUNC0 (sizeof (char *), num_options);
    if  (!ctx.last_option_usage)
        FUNC4 (&ctx);

    ctx.mask = 0;
    ctx.args_left = argc - 1;
    ctx.arg = argv;

    FUNC6 (&ctx);

    while (FUNC3 (&ctx)) {
        FUNC5 (&ctx);
    }

    FUNC2 (&ctx);

    FUNC1 (ctx.last_option_usage);

}