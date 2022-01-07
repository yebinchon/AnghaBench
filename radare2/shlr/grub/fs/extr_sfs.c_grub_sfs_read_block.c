
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* grub_fshelp_node_t ;
typedef scalar_t__ grub_err_t ;
typedef int grub_disk_addr_t ;
struct TYPE_3__ {int block; int data; } ;


 int GRUB_ERR_FILE_READ_ERROR ;
 int grub_error (int ,char*) ;
 scalar_t__ grub_sfs_read_extent (int ,int,int*,int*) ;

__attribute__((used)) static grub_disk_addr_t
grub_sfs_read_block (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  int blk = node->block;
  int size = 0;
  int next = 0;

  while (blk)
    {
      grub_err_t err;



      if (fileblock == 0)
 return blk;

      err = grub_sfs_read_extent (node->data, blk, &size, &next);
      if (err)
 return 0;

      if (fileblock < (unsigned int) size)
 return fileblock + blk;

      fileblock -= size;

      blk = next;
    }

  grub_error (GRUB_ERR_FILE_READ_ERROR,
       "reading a SFS block outside the extent");

  return 0;
}
