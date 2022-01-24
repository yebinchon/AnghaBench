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
struct priv {int /*<<< orphan*/ * alsa; int /*<<< orphan*/ * output; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (p->output)
        FUNC1(p->output);
    p->output = NULL;

    if (p->alsa) {
        int err;

        err = FUNC2(p->alsa);
        p->alsa = NULL;
        FUNC0("pcm close error");
    }

alsa_error: ;
}