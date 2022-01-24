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
struct priv {int /*<<< orphan*/  alsa; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 scalar_t__ SND_PCM_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    if (FUNC3(p->alsa) == SND_PCM_STATE_SUSPENDED) {
        FUNC0(ao, "PCM in suspend mode, trying to resume.\n");

        while ((err = FUNC2(p->alsa)) == -EAGAIN)
            FUNC1(1);
    }
}