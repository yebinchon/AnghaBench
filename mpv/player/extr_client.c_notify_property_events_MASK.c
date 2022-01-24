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
typedef  int uint64_t ;
struct mpv_handle {int num_properties; scalar_t__ lowest_changed; TYPE_1__** properties; } ;
struct TYPE_2__ {int event_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpv_handle*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpv_handle*) ; 

__attribute__((used)) static void FUNC2(struct mpv_handle *ctx, uint64_t event_mask)
{
    for (int i = 0; i < ctx->num_properties; i++) {
        if (ctx->properties[i]->event_mask & event_mask)
            FUNC0(ctx, i);
    }
    if (ctx->lowest_changed < ctx->num_properties)
        FUNC1(ctx);
}