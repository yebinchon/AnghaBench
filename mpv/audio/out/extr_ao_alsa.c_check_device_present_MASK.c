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
struct priv {int device_lost; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*) ; 

__attribute__((used)) static bool FUNC2(struct ao *ao, int alsa_err)
{
    struct priv *p = ao->priv;
    if (alsa_err != -ENODEV)
        return true;
    if (!p->device_lost) {
        FUNC0(ao, "Device lost, trying to recover...\n");
        FUNC1(ao);
        p->device_lost = true;
    }
    return false;
}