
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_port_stats {int dummy; } ;
struct switch_dev {int dummy; } ;


 int RTL8366S_MIB_RXB_ID ;
 int RTL8366S_MIB_TXB_ID ;
 int rtl8366_sw_get_port_stats (struct switch_dev*,int,struct switch_port_stats*,int ,int ) ;

__attribute__((used)) static int rtl8366s_sw_get_port_stats(struct switch_dev *dev, int port,
                                        struct switch_port_stats *stats)
{
 return (rtl8366_sw_get_port_stats(dev, port, stats,
    RTL8366S_MIB_TXB_ID, RTL8366S_MIB_RXB_ID));
}
