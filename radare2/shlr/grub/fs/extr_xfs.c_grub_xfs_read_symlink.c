
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int grub_ssize_t ;
typedef TYPE_3__* grub_fshelp_node_t ;
struct TYPE_6__ {int raw; } ;
struct TYPE_7__ {int format; TYPE_1__ data; int size; } ;
struct TYPE_8__ {TYPE_2__ inode; } ;




 int grub_be_to_cpu64 (int ) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 char* grub_strndup (int ,int) ;
 int grub_xfs_read_file (TYPE_3__*,int ,int ,int ,int ,int,char*) ;

__attribute__((used)) static char *
grub_xfs_read_symlink (grub_fshelp_node_t node)
{
  int size = grub_be_to_cpu64 (node->inode.size);

  switch (node->inode.format)
    {
    case 128:
      return grub_strndup (node->inode.data.raw, size);

    case 129:
      {
 char *symlink;
 grub_ssize_t numread;

 symlink = grub_malloc (size + 1);
 if (!symlink)
   return 0;

 numread = grub_xfs_read_file (node, 0, 0, 0, 0, size, symlink);
 if (numread != size)
   {
     grub_free (symlink);
     return 0;
   }
 symlink[size] = '\0';
 return symlink;
      }
    }

  return 0;
}
