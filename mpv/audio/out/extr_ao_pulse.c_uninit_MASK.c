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
struct priv {int /*<<< orphan*/  wakeup_lock; int /*<<< orphan*/  wakeup; int /*<<< orphan*/ * mainloop; int /*<<< orphan*/ * context; int /*<<< orphan*/ * stream; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (priv->mainloop)
        FUNC5(priv->mainloop);

    if (priv->stream) {
        FUNC2(priv->stream);
        FUNC3(priv->stream);
        priv->stream = NULL;
    }

    if (priv->context) {
        FUNC0(priv->context);
        FUNC1(priv->context);
        priv->context = NULL;
    }

    if (priv->mainloop) {
        FUNC4(priv->mainloop);
        priv->mainloop = NULL;
    }

    FUNC6(&priv->wakeup);
    FUNC7(&priv->wakeup_lock);
}