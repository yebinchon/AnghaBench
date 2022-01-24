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
struct reliable_ack {int len; scalar_t__* packet_id; } ;
typedef  scalar_t__ packet_id_type ;

/* Variables and functions */

__attribute__((used)) static inline bool
FUNC0(struct reliable_ack *ack, packet_id_type pid)
{
    int i;
    for (i = 0; i < ack->len; ++i)
    {
        if (ack->packet_id[i] == pid)
        {
            return true;
        }
    }
    return false;
}