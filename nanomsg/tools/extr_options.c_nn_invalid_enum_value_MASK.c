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
struct nn_parse_context {char** argv; struct nn_option* options; } ;
struct nn_option {scalar_t__ pointer; } ;
struct nn_enum_item {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_parse_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3 (struct nn_parse_context *ctx,
    int opt_index, char *argument)
{
    struct nn_option *opt;
    struct nn_enum_item *items;

    opt = &ctx->options[opt_index];
    items = (struct nn_enum_item *)opt->pointer;
    FUNC1 (stderr, "%s: Invalid value ``%s'' for", ctx->argv[0], argument);
    FUNC2 (ctx, opt_index, stderr);
    FUNC1 (stderr, ". Options are:\n");
    for (;items->name; ++items) {
        FUNC1 (stderr, "    %s\n", items->name);
    }
    FUNC0 (1);
}