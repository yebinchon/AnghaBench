
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_port_stats {int tx_bytes; int rx_bytes; } ;
struct switch_dev {int dummy; } ;
struct ar7240sw {int stats_lock; TYPE_1__* port_stats; } ;
struct TYPE_2__ {int tx_byte; int rx_good_byte; } ;


 int AR7240_NUM_PORTS ;
 int EINVAL ;
 int ar7240sw_capture_stats (struct ar7240sw*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_get_port_stats(struct switch_dev *dev, int port,
        struct switch_port_stats *stats)
{
 struct ar7240sw *as = sw_to_ar7240(dev);

 if (port >= AR7240_NUM_PORTS)
  return -EINVAL;

 ar7240sw_capture_stats(as);

 read_lock(&as->stats_lock);
 stats->rx_bytes = as->port_stats[port].rx_good_byte;
 stats->tx_bytes = as->port_stats[port].tx_byte;
 read_unlock(&as->stats_lock);

 return 0;
}
