
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int debugfs_dir; } ;
struct ag71xx {TYPE_1__ debug; TYPE_2__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOENT ;
 int S_IRUGO ;
 int ag71xx_debugfs_root ;
 int ag71xx_fops_int_stats ;
 int ag71xx_fops_napi_stats ;
 int ag71xx_fops_rx_ring ;
 int ag71xx_fops_tx_ring ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int ,int ,struct ag71xx*,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;

int ag71xx_debugfs_init(struct ag71xx *ag)
{
 struct device *dev = &ag->pdev->dev;

 ag->debug.debugfs_dir = debugfs_create_dir(dev_name(dev),
         ag71xx_debugfs_root);
 if (!ag->debug.debugfs_dir) {
  dev_err(dev, "unable to create debugfs directory\n");
  return -ENOENT;
 }

 debugfs_create_file("int_stats", S_IRUGO, ag->debug.debugfs_dir,
       ag, &ag71xx_fops_int_stats);
 debugfs_create_file("napi_stats", S_IRUGO, ag->debug.debugfs_dir,
       ag, &ag71xx_fops_napi_stats);
 debugfs_create_file("tx_ring", S_IRUGO, ag->debug.debugfs_dir,
       ag, &ag71xx_fops_tx_ring);
 debugfs_create_file("rx_ring", S_IRUGO, ag->debug.debugfs_dir,
       ag, &ag71xx_fops_rx_ring);

 return 0;
}
