
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfs_record {scalar_t__ datalen; scalar_t__ data; int key; } ;
struct grub_hfs_node {scalar_t__ type; } ;
struct grub_hfs_find_node_closure {scalar_t__ type; int isleaf; int done; scalar_t__ datalen; int datar; int found; scalar_t__ key; } ;
typedef int grub_uint32_t ;


 scalar_t__ GRUB_HFS_NODE_LEAF ;
 int grub_be_to_cpu32 (int ) ;
 int grub_hfs_cmp_catkeys (int ,void*) ;
 int grub_hfs_cmp_extkeys (int ,void*) ;
 int grub_memcpy (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
grub_hfs_find_node_node_found (struct grub_hfs_node *hnd,
          struct grub_hfs_record *rec,
          void *closure)
{
  struct grub_hfs_find_node_closure *c = closure;
  int cmp = 1;

  if (c->type == 0)
    cmp = grub_hfs_cmp_catkeys (rec->key, (void *) c->key);
  else
    cmp = grub_hfs_cmp_extkeys (rec->key, (void *) c->key);




  if (cmp <= 0)
    {
      grub_uint32_t *node = (grub_uint32_t *) rec->data;
      c->found = grub_be_to_cpu32 (*node);
    }
  else
    return 1;


  if (hnd->type == GRUB_HFS_NODE_LEAF)
    {
      c->isleaf = 1;


      if (cmp == 0)
 {
   c->done = 1;

   grub_memcpy (c->datar, rec->data,
         rec->datalen < c->datalen ? rec->datalen : c->datalen);
   return 1;
 }
    }

  return 0;
}
