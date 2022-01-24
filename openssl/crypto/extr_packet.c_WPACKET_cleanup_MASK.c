#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef  TYPE_1__ WPACKET_SUB ;
struct TYPE_6__ {TYPE_1__* subs; } ;
typedef  TYPE_2__ WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(WPACKET *pkt)
{
    WPACKET_SUB *sub, *parent;

    for (sub = pkt->subs; sub != NULL; sub = parent) {
        parent = sub->parent;
        FUNC0(sub);
    }
    pkt->subs = NULL;
}