
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_ntfs_rlst {scalar_t__ next_vcn; scalar_t__ curr_lcn; int flags; scalar_t__ curr_vcn; } ;
typedef scalar_t__ grub_fshelp_node_t ;
typedef scalar_t__ grub_disk_addr_t ;


 int RF_BLNK ;
 scalar_t__ grub_ntfs_read_run_list (struct grub_ntfs_rlst*) ;

__attribute__((used)) static grub_disk_addr_t
grub_ntfs_read_block (grub_fshelp_node_t node, grub_disk_addr_t block)
{
  struct grub_ntfs_rlst *ctx;

  ctx = (struct grub_ntfs_rlst *) node;
  if (block >= ctx->next_vcn)
    {
      if (grub_ntfs_read_run_list (ctx))
 return -1;
      return ctx->curr_lcn;
    }
  else
    return (ctx->flags & RF_BLNK) ? 0 : (block -
      ctx->curr_vcn + ctx->curr_lcn);
}
