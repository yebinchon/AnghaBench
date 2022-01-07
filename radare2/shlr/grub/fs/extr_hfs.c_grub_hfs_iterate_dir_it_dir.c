
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfs_record {struct grub_hfs_catalog_key* key; } ;
struct grub_hfs_node {int dummy; } ;
struct grub_hfs_iterate_dir_closure {int (* hook ) (struct grub_hfs_record*,int ) ;int closure; struct grub_hfs_catalog_key* key; } ;
struct grub_hfs_catalog_key {int parent_dir; } ;


 scalar_t__ grub_be_to_cpu32 (int ) ;
 int stub1 (struct grub_hfs_record*,int ) ;

__attribute__((used)) static int
grub_hfs_iterate_dir_it_dir (struct grub_hfs_node *hnd,
        struct grub_hfs_record *rec,
        void *closure)
{
  struct grub_hfs_iterate_dir_closure *c = closure;
  struct grub_hfs_catalog_key *ckey = rec->key;
  struct grub_hfs_catalog_key *origkey = c->key;


  if (grub_be_to_cpu32 (ckey->parent_dir)
      != grub_be_to_cpu32 ((origkey)->parent_dir))
    return 1;

  return c->hook (rec, c->closure);
}
