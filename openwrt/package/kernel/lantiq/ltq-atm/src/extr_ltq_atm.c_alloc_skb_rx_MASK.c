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
typedef  int /*<<< orphan*/  skb ;

/* Variables and functions */
 int DATA_BUFFER_ALIGNMENT ; 
 scalar_t__ LESS_CACHE_INV_LEN ; 
 scalar_t__ RX_DMA_CH_AAL_BUF_SIZE ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static inline struct sk_buff* FUNC4(void)
{
	struct sk_buff *skb;

	skb = FUNC0(RX_DMA_CH_AAL_BUF_SIZE + DATA_BUFFER_ALIGNMENT);
	if ( skb != NULL ) {
		/*  must be burst length alignment  */
		if ( ((unsigned int)skb->data & (DATA_BUFFER_ALIGNMENT - 1)) != 0 )
			FUNC3(skb, ~((unsigned int)skb->data + (DATA_BUFFER_ALIGNMENT - 1)) & (DATA_BUFFER_ALIGNMENT - 1));
		/*  pub skb in reserved area "skb->data - 4"    */
		*((struct sk_buff **)skb->data - 1) = skb;
		/*  write back and invalidate cache */
		FUNC2((unsigned long)skb->data - sizeof(skb), sizeof(skb));
		/*  invalidate cache    */
#if defined(ENABLE_LESS_CACHE_INV) && ENABLE_LESS_CACHE_INV
		dma_cache_inv((unsigned long)skb->data, LESS_CACHE_INV_LEN);
#else
		FUNC1((unsigned long)skb->data, RX_DMA_CH_AAL_BUF_SIZE);
#endif
	}
	return skb;
}