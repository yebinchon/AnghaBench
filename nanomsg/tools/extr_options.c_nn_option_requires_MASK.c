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
struct nn_parse_context {char** argv; TYPE_1__* options; } ;
struct TYPE_2__ {int /*<<< orphan*/  requires_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_parse_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_parse_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4 (struct nn_parse_context *ctx, int opt_index) {
    FUNC1 (stderr, "%s: Option", ctx->argv[0]);
    FUNC2 (ctx, opt_index, stderr);
    FUNC1 (stderr, "requires at least one of the following options:\n");

    FUNC3 (ctx, ctx->options[opt_index].requires_mask);
    FUNC0 (1);
}