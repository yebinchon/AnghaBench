
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct ag71xx {int dummy; } ;


 int AR8216_HEADER_LEN ;
 int skb_push (struct sk_buff*,int ) ;

void ag71xx_add_ar8216_header(struct ag71xx *ag, struct sk_buff *skb)
{
 skb_push(skb, AR8216_HEADER_LEN);
 skb->data[0] = 0x10;
 skb->data[1] = 0x80;
}
