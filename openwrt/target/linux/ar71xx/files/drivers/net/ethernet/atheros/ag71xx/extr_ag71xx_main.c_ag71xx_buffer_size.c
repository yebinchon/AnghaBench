
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct ag71xx {int rx_buf_size; } ;


 int SKB_DATA_ALIGN (int) ;

__attribute__((used)) static int ag71xx_buffer_size(struct ag71xx *ag)
{
 return ag->rx_buf_size +
        SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
}
