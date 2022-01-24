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
struct nn_parse_context {int mask; int requires; char** argv; int /*<<< orphan*/ * last_option_usage; struct nn_option* options; } ;
struct nn_option {int requires_mask; int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_parse_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_parse_context*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (struct nn_parse_context *ctx) {
    int i;
    struct nn_option *opt;

    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (!ctx->last_option_usage[i])
            continue;
        if (opt->requires_mask &&
            (opt->requires_mask & ctx->mask) != opt->requires_mask) {
            FUNC2 (ctx, i);
        }
    }

    if ((ctx->requires & ctx->mask) != ctx->requires) {
        FUNC1 (stderr, "%s: At least one of the following required:\n",
            ctx->argv[0]);
        FUNC3 (ctx, ctx->requires & ~ctx->mask);
        FUNC0 (1);
    }
}