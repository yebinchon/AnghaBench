
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_fshelp_node {int size; int block; int parent; int data; } ;
struct grub_affs_iterate_dir_closure {int hashtable; int closure; scalar_t__ (* hook ) (char const*,int,struct grub_fshelp_node*,int ) ;TYPE_1__* file; int data; struct grub_fshelp_node* node; } ;
struct TYPE_2__ {int parent; } ;


 int grub_be_to_cpu32 (int ) ;
 int grub_free (int ) ;
 struct grub_fshelp_node* grub_malloc (int) ;
 scalar_t__ stub1 (char const*,int,struct grub_fshelp_node*,int ) ;

__attribute__((used)) static int
grub_affs_create_node (const char *name, int block,
         int size, int type,
         struct grub_affs_iterate_dir_closure *c)
{
  struct grub_fshelp_node *node;

  node = grub_malloc (sizeof (*node));
  c->node = node;
  if (!node)
    {
      grub_free (c->hashtable);
      return 1;
    }

  node->data = c->data;
  node->size = size;
  node->block = block;
  node->parent = grub_be_to_cpu32 (c->file->parent);

  if (c->hook (name, type, node, c->closure))
    {
      grub_free (c->hashtable);
      return 1;
    }
  return 0;
}
