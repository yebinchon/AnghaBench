
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfsplus_btree {int nodesize; int file; } ;
struct grub_hfsplus_btnode {int next; int count; } ;


 int grub_be_to_cpu16 (int ) ;
 int grub_be_to_cpu32 (int ) ;
 void* grub_hfsplus_btree_recptr (struct grub_hfsplus_btree*,struct grub_hfsplus_btnode*,int) ;
 scalar_t__ grub_hfsplus_read_file (int *,int ,int ,int ,int,int,char*) ;

__attribute__((used)) static int
grub_hfsplus_btree_iterate_node (struct grub_hfsplus_btree *btree,
     struct grub_hfsplus_btnode *first_node,
     int first_rec,
     int (*hook) (void *record, void *closure),
     void *closure)
{
  int rec;

  if (hook)
  for (;;)
    {
      char *cnode = (char *) first_node;

      if (!first_node) {
        return 0;
      }

      for (rec = first_rec; rec < grub_be_to_cpu16 (first_node->count); rec++)
 {
   if (hook (grub_hfsplus_btree_recptr (btree, first_node, rec), closure))
     return 1;
 }

      if (! first_node->next)
 break;

      if (grub_hfsplus_read_file (&btree->file, 0, 0, 0,
      (grub_be_to_cpu32 (first_node->next)
       * btree->nodesize),
      btree->nodesize, cnode) <= 0)
 return 1;


      first_rec = 0;
    }

  return 0;
}
