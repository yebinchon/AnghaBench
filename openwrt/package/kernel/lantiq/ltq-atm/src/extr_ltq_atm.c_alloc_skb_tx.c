
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 int DATA_BUFFER_ALIGNMENT ;
 scalar_t__ MAX_TX_PACKET_ALIGN_BYTES ;
 scalar_t__ MAX_TX_PACKET_PADDING_BYTES ;
 scalar_t__ TX_INBAND_HEADER_LENGTH ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline struct sk_buff* alloc_skb_tx(unsigned int size)
{
 struct sk_buff *skb;


 size += TX_INBAND_HEADER_LENGTH + MAX_TX_PACKET_ALIGN_BYTES + MAX_TX_PACKET_PADDING_BYTES;
 size &= ~(DATA_BUFFER_ALIGNMENT - 1);
 skb = dev_alloc_skb(size + DATA_BUFFER_ALIGNMENT);

 if ( skb != ((void*)0) )
  skb_reserve(skb, (~((unsigned int)skb->data + (DATA_BUFFER_ALIGNMENT - 1)) & (DATA_BUFFER_ALIGNMENT - 1)) + TX_INBAND_HEADER_LENGTH);
 return skb;
}
