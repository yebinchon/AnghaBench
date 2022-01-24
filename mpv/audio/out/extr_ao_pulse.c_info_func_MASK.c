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
struct pa_sink_input_info {int dummy; } ;
struct priv {int /*<<< orphan*/  mainloop; struct pa_sink_input_info pi; } ;
struct pa_context {int dummy; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pa_context *c, const struct pa_sink_input_info *i,
                      int is_last, void *userdata)
{
    struct ao *ao = userdata;
    struct priv *priv = ao->priv;
    if (is_last < 0) {
        FUNC0("Failed to get sink input info");
        return;
    }
    if (!i)
        return;
    priv->pi = *i;
    FUNC1(priv->mainloop, 0);
}