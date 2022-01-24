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
struct m_property {int dummy; } ;
struct command_ctx {int /*<<< orphan*/  hotplug; } ;
struct ao_device_list {int /*<<< orphan*/  num_devices; } ;
struct MPContext {struct command_ctx* command_ctx; } ;

/* Variables and functions */
 struct ao_device_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  get_device_entry ; 
 int FUNC2 (int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao_device_list*) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    struct MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;
    FUNC1(mpctx);

    struct ao_device_list *list = FUNC0(cmd->hotplug);
    return FUNC2(action, arg, list->num_devices,
                                get_device_entry, list);
}