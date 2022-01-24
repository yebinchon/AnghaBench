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
struct priv {int wakeup_status; int /*<<< orphan*/  wakeup_lock; int /*<<< orphan*/  wakeup; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ao *ao)
{
    struct priv *priv = ao->priv;
    FUNC1(&priv->wakeup_lock);
    priv->wakeup_status = 1;
    FUNC0(&priv->wakeup);
    FUNC2(&priv->wakeup_lock);
}