
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfsplus_btree {int nodesize; } ;
struct grub_hfsplus_btnode {int dummy; } ;
typedef int grub_uint16_t ;


 unsigned int grub_be_to_cpu16 (int ) ;

__attribute__((used)) static inline unsigned int
grub_hfsplus_btree_recoffset (struct grub_hfsplus_btree *btree,
      struct grub_hfsplus_btnode *node, int index)
{
  char *cnode = (char *) node;
  grub_uint16_t *recptr;
  recptr = (grub_uint16_t *) (&cnode[btree->nodesize
         - index * sizeof (grub_uint16_t) - 2]);
  return recptr? grub_be_to_cpu16 (*recptr): 0;
}
