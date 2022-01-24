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
struct packet_id_rec {scalar_t__ last_reap; } ;

/* Variables and functions */
 scalar_t__ SEQ_REAP_INTERVAL ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC0 (struct packet_id_rec*) ; 

__attribute__((used)) static inline void
FUNC1(struct packet_id_rec *p)
{
    if (p->last_reap + SEQ_REAP_INTERVAL <= now)
    {
        FUNC0(p);
    }
}