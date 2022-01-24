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
struct nn_parse_context {scalar_t__* data; scalar_t__** last_option_usage; struct nn_option* options; } ;
struct nn_option {scalar_t__ shortname; int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_parse_context*) ; 
 scalar_t__ FUNC1 (struct nn_parse_context*) ; 
 scalar_t__ FUNC2 (struct nn_option*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct nn_parse_context*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_parse_context*,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC5 (struct nn_parse_context *ctx)
{
    int i;
    struct nn_option *opt;

    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (!opt->shortname)
            continue;
        if (opt->shortname == *ctx->data) {
            ctx->last_option_usage[i] = ctx->data;
            if (FUNC2 (opt)) {
                if (ctx->data[1]) {
                    FUNC4 (ctx, i, ctx->data+1);
                } else {
                    if (FUNC1 (ctx)) {
                        FUNC4 (ctx, i, ctx->data);
                    } else {
                        FUNC3 ("requires an argument", ctx, i);
                    }
                }
                ctx->data = "";  /* end of short options anyway */
            } else {
                FUNC4 (ctx, i, NULL);
                ctx->data += 1;
            }
            return;
        }
    }
    FUNC0 (ctx);
}