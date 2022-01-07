
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_dir; } ;
struct ag71xx {TYPE_1__ debug; } ;


 int debugfs_remove_recursive (int ) ;

void ag71xx_debugfs_exit(struct ag71xx *ag)
{
 debugfs_remove_recursive(ag->debug.debugfs_dir);
}
