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
struct priv {double buffered; double speed; int /*<<< orphan*/  paused; } ;
struct ao {double samplerate; struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 

__attribute__((used)) static void FUNC2(struct ao *ao)
{
    struct priv *priv = ao->priv;
    FUNC0(ao);
    if (!priv->paused)
        FUNC1(1000000.0 * priv->buffered / ao->samplerate / priv->speed);
}