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
struct priv {int /*<<< orphan*/  wakeup_lock; scalar_t__ wakeup_status; int /*<<< orphan*/  wakeup; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ao *ao, pthread_mutex_t *lock)
{
    struct priv *priv = ao->priv;
    // We don't use this mutex, because pulse like to call stream_request_cb
    // while we have the central mutex held.
    FUNC2(lock);
    FUNC1(&priv->wakeup_lock);
    while (!priv->wakeup_status)
        FUNC0(&priv->wakeup, &priv->wakeup_lock);
    priv->wakeup_status = 0;
    FUNC2(&priv->wakeup_lock);
    FUNC1(lock);
    return 0;
}