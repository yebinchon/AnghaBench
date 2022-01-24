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
struct priv {int retval; int /*<<< orphan*/  mainloop; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(pa_context *c, int success, void *userdata)
{
    struct ao *ao = userdata;
    struct priv *priv = ao->priv;
    priv->retval = success;
    FUNC0(priv->mainloop, 0);
}