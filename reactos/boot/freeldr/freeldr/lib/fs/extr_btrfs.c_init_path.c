
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_path {int tree_buf; } ;
struct TYPE_3__ {int nodesize; } ;
struct TYPE_4__ {TYPE_1__ SuperBlock; } ;


 TYPE_2__* BtrFsInfo ;
 int FrLdrTempAlloc (int ,int ) ;
 int TAG_BTRFS_NODE ;
 int memset (struct btrfs_path*,int ,int) ;

__attribute__((used)) static inline void init_path(struct btrfs_path *path)
{
    memset(path, 0, sizeof(*path));
    path->tree_buf = FrLdrTempAlloc(BtrFsInfo->SuperBlock.nodesize, TAG_BTRFS_NODE);
}
