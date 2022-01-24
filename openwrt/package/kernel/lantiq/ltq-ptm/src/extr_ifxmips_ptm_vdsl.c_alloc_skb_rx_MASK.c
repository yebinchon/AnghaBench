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
struct sk_buff {scalar_t__ data; scalar_t__ end; } ;
typedef  int /*<<< orphan*/  skb ;

/* Variables and functions */
 int DATA_BUFFER_ALIGNMENT ; 
 scalar_t__ RX_MAX_BUFFER_SIZE ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline struct sk_buff* FUNC5(void)
{
    struct sk_buff *skb;

    /*  allocate memroy including trailer and padding   */
    skb = FUNC0(RX_MAX_BUFFER_SIZE + DATA_BUFFER_ALIGNMENT);
    if ( skb != NULL ) {
        /*  must be burst length alignment and reserve two more bytes for MAC address alignment  */
        if ( ((unsigned int)skb->data & (DATA_BUFFER_ALIGNMENT - 1)) != 0 )
            FUNC3(skb, ~((unsigned int)skb->data + (DATA_BUFFER_ALIGNMENT - 1)) & (DATA_BUFFER_ALIGNMENT - 1));
        /*  pub skb in reserved area "skb->data - 4"    */
        *((struct sk_buff **)skb->data - 1) = skb;
        FUNC4();
        /*  write back and invalidate cache    */
        FUNC2((unsigned long)skb->data - sizeof(skb), sizeof(skb));
        /*  invalidate cache    */
        FUNC1((unsigned long)skb->data, (unsigned int)skb->end - (unsigned int)skb->data);
    }

    return skb;
}