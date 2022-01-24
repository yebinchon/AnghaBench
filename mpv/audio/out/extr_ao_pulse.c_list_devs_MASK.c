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
struct sink_cb_ctx {struct ao_device_list* member_1; struct ao* member_0; } ;
struct priv {int /*<<< orphan*/  context; int /*<<< orphan*/  mainloop; } ;
struct ao_device_list {int dummy; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sink_cb_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sink_info_cb ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ao *ao, struct ao_device_list *list)
{
    struct priv *priv = ao->priv;
    struct sink_cb_ctx ctx = {ao, list};

    FUNC1(priv->mainloop);
    FUNC2(priv, FUNC0(priv->context, sink_info_cb, &ctx));
}