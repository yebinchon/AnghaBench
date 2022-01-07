
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int ENOENT ;
 int KBUILD_MODNAME ;
 scalar_t__ ag71xx_debugfs_root ;
 scalar_t__ debugfs_create_dir (int ,int *) ;

int ag71xx_debugfs_root_init(void)
{
 if (ag71xx_debugfs_root)
  return -EBUSY;

 ag71xx_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));
 if (!ag71xx_debugfs_root)
  return -ENOENT;

 return 0;
}
