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
struct skb_frag_struct {int size; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int TX_DMA_BUF_LEN ; 
 struct sk_buff* FUNC1 (struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC4(struct sk_buff *skb)
{
	struct sk_buff *head = skb;
	int i, nfrags = 0;
	struct skb_frag_struct *frag;

next_frag:
	nfrags++;
	if (FUNC2(skb)) {
		for (i = 0; i < FUNC3(skb)->nr_frags; i++) {
			frag = &FUNC3(skb)->frags[i];
			nfrags += FUNC0(frag->size, TX_DMA_BUF_LEN);
		}
	} else {
		nfrags += FUNC3(skb)->nr_frags;
	}

	skb = FUNC1(head, skb);
	if (skb)
		goto next_frag;

	return FUNC0(nfrags, 2);
}