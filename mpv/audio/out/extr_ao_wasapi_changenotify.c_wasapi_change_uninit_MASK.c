#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ lpVtbl; } ;
struct change_notify {scalar_t__ pEnumerator; TYPE_1__ client; } ;
struct wasapi_state {struct change_notify change; } ;
struct ao {struct wasapi_state* priv; } ;
typedef  int /*<<< orphan*/  IMMNotificationClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    struct change_notify *change = &state->change;

    if (change->pEnumerator && change->client.lpVtbl) {
        FUNC0(
            change->pEnumerator, (IMMNotificationClient *)change);
    }

    FUNC1(change->pEnumerator);
}