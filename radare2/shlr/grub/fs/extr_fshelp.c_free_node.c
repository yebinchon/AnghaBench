
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_fshelp_find_file_closure {scalar_t__ rootnode; scalar_t__ currroot; } ;
typedef scalar_t__ grub_fshelp_node_t ;


 int grub_free (scalar_t__) ;

__attribute__((used)) static void
free_node (grub_fshelp_node_t node, struct grub_fshelp_find_file_closure *c)
{
  if (node != c->rootnode && node != c->currroot)
    grub_free (node);
}
