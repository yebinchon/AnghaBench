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
struct nn_parse_context {char* data; char** last_option_usage; struct nn_option* options; } ;
struct nn_option {char* longname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_parse_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_parse_context*) ; 
 scalar_t__ FUNC2 (struct nn_parse_context*) ; 
 scalar_t__ FUNC3 (struct nn_option*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct nn_parse_context*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_parse_context*,int,char*) ; 

__attribute__((used)) static void FUNC6 (struct nn_parse_context *ctx)
{
    struct nn_option *opt;
    char *a, *b;
    size_t longest_prefix;
    size_t cur_prefix;
    int best_match;
    char *arg;
    int i;

    arg = ctx->data+2;
    longest_prefix = 0;
    best_match = -1;
    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        for (a = opt->longname, b = arg;; ++a, ++b) {
            if (*b == 0 || *b == '=') {  /* End of option on command-line */
                cur_prefix = a - opt->longname;
                if (!*a) {  /* Matches end of option name */
                    best_match = i;
                    longest_prefix = cur_prefix;
                    goto finish;
                }
                if (cur_prefix == longest_prefix) {
                    best_match = -1;  /* Ambiguity */
                } else if (cur_prefix > longest_prefix) {
                    best_match = i;
                    longest_prefix = cur_prefix;
                }
                break;
            } else if (*b != *a) {
                break;
            }
        }
    }
finish:
    if (best_match >= 0) {
        opt = &ctx->options[best_match];
        ctx->last_option_usage[best_match] = ctx->data;
        if (arg[longest_prefix] == '=') {
            if (FUNC3 (opt)) {
                FUNC5 (ctx, best_match, arg + longest_prefix + 1);
            } else {
                FUNC4 ("does not accept argument", ctx, best_match);
            }
        } else {
            if (FUNC3 (opt)) {
                if (FUNC2 (ctx)) {
                    FUNC5 (ctx, best_match, ctx->data);
                } else {
                    FUNC4 ("requires an argument", ctx, best_match);
                }
            } else {
                FUNC5 (ctx, best_match, NULL);
            }
        }
    } else if (longest_prefix > 0) {
        FUNC0 (ctx);
    } else {
        FUNC1 (ctx);
    }
}