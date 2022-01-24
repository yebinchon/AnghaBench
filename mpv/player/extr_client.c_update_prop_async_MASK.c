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
union m_option_value {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  uint64_t ;
struct observe_property {int async_updating; int async_value_valid; int changed; int /*<<< orphan*/  async_value_ts; TYPE_2__* type; int /*<<< orphan*/  async_value; int /*<<< orphan*/  format; int /*<<< orphan*/  name; int /*<<< orphan*/  async_change_ts; struct mpv_handle* owner; } ;
struct mpv_handle {int async_counter; int /*<<< orphan*/  lock; scalar_t__ lowest_changed; int /*<<< orphan*/  mpctx; } ;
struct getproperty_request {scalar_t__ status; union m_option_value* data; int /*<<< orphan*/  format; int /*<<< orphan*/  name; int /*<<< orphan*/  mpctx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct getproperty_request*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,union m_option_value*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mpv_handle*) ; 

__attribute__((used)) static void FUNC7(void *p)
{
    struct observe_property *prop = p;
    struct mpv_handle *ctx = prop->owner;

    union m_option_value val = {0};
    bool val_valid = false;
    uint64_t value_ts;

    FUNC4(&ctx->lock);
    value_ts = prop->async_change_ts;
    FUNC0(prop->async_updating);
    FUNC5(&ctx->lock);

    struct getproperty_request req = {
        .mpctx = ctx->mpctx,
        .name = prop->name,
        .format = prop->format,
        .data = &val,
    };
    FUNC1(&req);
    val_valid = req.status >= 0;

    FUNC4(&ctx->lock);

    FUNC0(prop->async_updating);

    // Move to prop->async_value
    FUNC2(prop->type, &prop->async_value);
    FUNC3(&prop->async_value, &val, prop->type->type->size);
    prop->async_value_valid = val_valid;

    prop->async_value_ts = value_ts;
    prop->async_updating = false;

    // Cause it to re-check the property.
    prop->changed = true;
    ctx->lowest_changed = 0;

    ctx->async_counter -= 1;
    FUNC6(ctx);

    FUNC5(&ctx->lock);
}