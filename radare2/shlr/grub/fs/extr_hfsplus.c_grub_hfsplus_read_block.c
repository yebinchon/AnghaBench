
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grub_hfsplus_key_internal {int dummy; } ;
struct grub_hfsplus_extkey_internal {scalar_t__ fileid; int start; } ;
struct grub_hfsplus_extkey {int dummy; } ;
struct grub_hfsplus_extent {int dummy; } ;
struct grub_hfsplus_btnode {int dummy; } ;
typedef TYPE_2__* grub_fshelp_node_t ;
typedef int grub_disk_addr_t ;
struct TYPE_5__ {scalar_t__ fileid; TYPE_1__* data; struct grub_hfsplus_extent* extents; } ;
struct TYPE_4__ {int embedded_offset; int log2blksize; int extoverflow_tree; } ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_ERR_READ_ERROR ;
 scalar_t__ GRUB_HFSPLUS_FILEID_OVERFLOW ;
 int grub_error (int ,char*,...) ;
 int grub_free (struct grub_hfsplus_btnode*) ;
 scalar_t__ grub_hfsplus_btree_recptr (int *,struct grub_hfsplus_btnode*,int) ;
 scalar_t__ grub_hfsplus_btree_search (int *,struct grub_hfsplus_key_internal*,int ,struct grub_hfsplus_btnode**,int*) ;
 int grub_hfsplus_cmp_extkey ;
 int grub_hfsplus_find_block (struct grub_hfsplus_extent*,int*) ;

__attribute__((used)) static grub_disk_addr_t
grub_hfsplus_read_block (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  struct grub_hfsplus_btnode *nnode = 0;
  int blksleft = fileblock;
  struct grub_hfsplus_extent *extents = &node->extents[0];

  while (1)
    {
      struct grub_hfsplus_extkey *key;
      struct grub_hfsplus_extkey_internal extoverflow;
      int blk, ptr = 0;


      blk = grub_hfsplus_find_block (extents, &blksleft);



      grub_free (nnode);
      nnode = 0;

      if (blk != -1)
 return (blk
  + (node->data->embedded_offset >> (node->data->log2blksize
         - GRUB_DISK_SECTOR_BITS)));




      if (node->fileid == GRUB_HFSPLUS_FILEID_OVERFLOW)
 {
   grub_error (GRUB_ERR_READ_ERROR,
        "extra extents found in an extend overflow file");
   break;
 }


      extoverflow.fileid = node->fileid;
      extoverflow.start = fileblock - blksleft;

      if (grub_hfsplus_btree_search (&node->data->extoverflow_tree,
         (struct grub_hfsplus_key_internal *) &extoverflow,
         grub_hfsplus_cmp_extkey, &nnode, &ptr))
 {
   grub_error (GRUB_ERR_READ_ERROR,
        "no block found for the file id 0x%x and the block offset 0x%x",
        node->fileid, fileblock);
   break;
 }


      key = (struct grub_hfsplus_extkey *)
 grub_hfsplus_btree_recptr (&node->data->extoverflow_tree, nnode, ptr);
      extents = (struct grub_hfsplus_extent *) (key + 1);



    }

  grub_free (nnode);


  return -1;
}
