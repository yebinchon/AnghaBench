
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ grub_ssize_t ;
typedef TYPE_1__* grub_fshelp_node_t ;
struct TYPE_4__ {int size; } ;


 int grub_free (char*) ;
 scalar_t__ grub_hfsplus_read_file (TYPE_1__*,int ,int ,int ,int ,int,char*) ;
 char* grub_malloc (int) ;

__attribute__((used)) static char *
grub_hfsplus_read_symlink (grub_fshelp_node_t node)
{
  char *symlink;
  grub_ssize_t numread;

  symlink = grub_malloc (node->size + 1);
  if (!symlink)
    return 0;

  numread = grub_hfsplus_read_file (node, 0, 0, 0, 0, node->size, symlink);
  if (numread != (grub_ssize_t) node->size)
    {
      grub_free (symlink);
      return 0;
    }
  symlink[node->size] = '\0';

  return symlink;
}
