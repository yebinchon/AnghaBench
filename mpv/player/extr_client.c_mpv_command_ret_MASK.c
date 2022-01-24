#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpv_node {int /*<<< orphan*/  format; } ;
typedef  struct mpv_node mpv_node ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ mpv_handle ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct mpv_node*) ; 

int FUNC2(mpv_handle *ctx, const char **args, mpv_node *result)
{
    struct mpv_node rn = {.format = MPV_FORMAT_NONE};
    int r = FUNC1(ctx, FUNC0(ctx->log, args), &rn);
    if (result && r >= 0)
        *result = rn;
    return r;
}