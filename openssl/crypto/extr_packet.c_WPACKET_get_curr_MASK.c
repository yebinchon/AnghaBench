#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int curr; } ;
typedef  TYPE_1__ WPACKET ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_1__*) ; 

unsigned char *FUNC1(WPACKET *pkt)
{
    unsigned char *buf = FUNC0(pkt);

    if (buf == NULL)
        return NULL;

    return buf + pkt->curr;
}