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
struct priv {int playing; int /*<<< orphan*/  hdl; scalar_t__ delay; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (p->playing) {
        FUNC1(ao, "Blocking until remaining audio is played... (sndio design bug).\n");

        p->playing = false;

        if (!FUNC3(p->hdl))
            FUNC0(ao, "reset: couldn't stop\n");
        p->delay = 0;
        if (!FUNC2(p->hdl))
            FUNC0(ao, "reset: couldn't start\n");
    }
}