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
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,unsigned int,...) ; 
 unsigned int KSEG0 ; 
 unsigned int KSEG1 ; 

__attribute__((used)) static inline struct sk_buff *FUNC1(unsigned int dataptr)
{
	unsigned int skb_dataptr;
	struct sk_buff *skb;

	skb_dataptr = ((dataptr - 1) << 2) | KSEG1;
	skb = *(struct sk_buff **)skb_dataptr;

	FUNC0((unsigned int)skb >= KSEG0, "invalid skb - skb = %#08x, dataptr = %#08x", (unsigned int)skb, dataptr);
	FUNC0(((unsigned int)skb->data | KSEG1) == ((dataptr << 2) | KSEG1), "invalid skb - skb = %#08x, skb->data = %#08x, dataptr = %#08x", (unsigned int)skb, (unsigned int)skb->data, dataptr);

	return skb;
}