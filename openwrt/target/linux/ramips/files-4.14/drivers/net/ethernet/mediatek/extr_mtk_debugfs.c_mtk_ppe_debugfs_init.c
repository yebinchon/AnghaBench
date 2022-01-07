
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int S_IRUGO ;
 struct mtk_eth* _eth ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct mtk_eth*,int *) ;
 int mtk_ppe_debugfs_foe_fops ;

int mtk_ppe_debugfs_init(struct mtk_eth *eth)
{
 struct dentry *root;

 _eth = eth;

 root = debugfs_create_dir("mtk_ppe", ((void*)0));
 if (!root)
  return -ENOMEM;

 debugfs_create_file("all_entry", S_IRUGO, root, eth, &mtk_ppe_debugfs_foe_fops);

 return 0;
}
