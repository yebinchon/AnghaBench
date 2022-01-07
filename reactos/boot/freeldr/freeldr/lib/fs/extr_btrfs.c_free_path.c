
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {scalar_t__ tree_buf; } ;


 int FrLdrTempFree (scalar_t__,int ) ;
 int TAG_BTRFS_NODE ;

__attribute__((used)) static inline void free_path(struct btrfs_path *path)
{
    if (path->tree_buf) FrLdrTempFree(path->tree_buf, TAG_BTRFS_NODE);
}
