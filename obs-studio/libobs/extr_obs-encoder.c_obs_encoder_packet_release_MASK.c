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
struct encoder_packet {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long*) ; 
 int /*<<< orphan*/  FUNC1 (struct encoder_packet*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (long*) ; 

void FUNC3(struct encoder_packet *pkt)
{
	if (!pkt)
		return;

	if (pkt->data) {
		long *p_refs = ((long *)pkt->data) - 1;
		if (FUNC2(p_refs) == 0)
			FUNC0(p_refs);
	}

	FUNC1(pkt, 0, sizeof(struct encoder_packet));
}