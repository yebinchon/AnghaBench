
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; int parent; } ;
struct grub_hfsplus_key_internal {TYPE_1__ catkey; } ;
struct grub_hfsplus_iterate_dir_closure {int (* hook ) (char const*,int,TYPE_3__*,void*) ;int ret; void* closure; TYPE_3__* dir; } ;
struct grub_hfsplus_btnode {int dummy; } ;
typedef TYPE_3__* grub_fshelp_node_t ;
struct TYPE_9__ {TYPE_2__* data; int fileid; } ;
struct TYPE_8__ {int catalog_tree; } ;


 int grub_free (struct grub_hfsplus_btnode*) ;
 int grub_hfsplus_btree_iterate_node (int *,struct grub_hfsplus_btnode*,int,int ,struct grub_hfsplus_iterate_dir_closure*) ;
 scalar_t__ grub_hfsplus_btree_search (int *,struct grub_hfsplus_key_internal*,int ,struct grub_hfsplus_btnode**,int*) ;
 int grub_hfsplus_cmp_catkey ;
 int list_nodes ;

__attribute__((used)) static int
grub_hfsplus_iterate_dir (grub_fshelp_node_t dir,
     int (*hook) (const char *filename,
           enum grub_fshelp_filetype filetype,
           grub_fshelp_node_t node,
           void *closure),
     void *closure)
{
  struct grub_hfsplus_key_internal intern;
  struct grub_hfsplus_btnode *node = ((void*)0);
  int ptr = 0;
  struct grub_hfsplus_iterate_dir_closure c;


  intern.catkey.parent = dir->fileid;
  intern.catkey.name = "";


  if (grub_hfsplus_btree_search (&dir->data->catalog_tree, &intern,
     grub_hfsplus_cmp_catkey, &node, &ptr))
    return 0;

  c.dir = dir;
  c.hook = hook;
  c.closure = closure;
  c.ret = 0;

  grub_hfsplus_btree_iterate_node (&dir->data->catalog_tree, node, ptr,
       list_nodes, &c);

  grub_free (node);

  return c.ret;
}
