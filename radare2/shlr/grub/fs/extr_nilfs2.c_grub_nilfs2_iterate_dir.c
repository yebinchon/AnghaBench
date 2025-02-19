
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_nilfs2_dir_entry {scalar_t__ rec_len; int name_len; scalar_t__ file_type; int inode; } ;
struct TYPE_2__ {scalar_t__ i_mode; int i_size; } ;
struct grub_fshelp_node {int inode_read; unsigned int ino; TYPE_1__ inode; int data; } ;
typedef struct grub_fshelp_node* grub_fshelp_node_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;


 int FILETYPE_INO_DIRECTORY ;
 int FILETYPE_INO_MASK ;
 int FILETYPE_INO_REG ;
 int FILETYPE_INO_SYMLINK ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_REG ;
 int GRUB_FSHELP_SYMLINK ;
 int GRUB_FSHELP_UNKNOWN ;
 scalar_t__ NILFS_FT_DIR ;
 scalar_t__ NILFS_FT_REG_FILE ;
 scalar_t__ NILFS_FT_SYMLINK ;
 scalar_t__ NILFS_FT_UNKNOWN ;
 scalar_t__ grub_errno ;
 int grub_free (struct grub_fshelp_node*) ;
 int grub_le_to_cpu16 (scalar_t__) ;
 unsigned int grub_le_to_cpu64 (int ) ;
 void* grub_malloc (int) ;
 int grub_nilfs2_read_file (struct grub_fshelp_node*,int ,int ,int ,unsigned int,int,char*) ;
 int grub_nilfs2_read_inode (int ,unsigned int,TYPE_1__*) ;

__attribute__((used)) static int
grub_nilfs2_iterate_dir (grub_fshelp_node_t dir,
    int (*hook) (const char *filename,
          enum grub_fshelp_filetype filetype,
          grub_fshelp_node_t node,
          void *closure),
    void *closure)
{
  unsigned int fpos = 0;
  struct grub_fshelp_node *diro = (struct grub_fshelp_node *) dir;

  if (!diro->inode_read)
    {
      grub_nilfs2_read_inode (diro->data, diro->ino, &diro->inode);
      if (grub_errno)
 return 0;
    }


  if (hook)
  while (fpos < grub_le_to_cpu64 (diro->inode.i_size))
    {
      struct grub_nilfs2_dir_entry dirent;

      grub_nilfs2_read_file (diro, 0, 0, 0, fpos,
        sizeof (struct grub_nilfs2_dir_entry),
        (char *) &dirent);
      if (grub_errno)
 return 0;

      if (dirent.rec_len == 0)
 return 0;

      if (dirent.name_len != 0)
 {

   char filename[dirent.name_len + 1];



   struct grub_fshelp_node *fdiro;
   enum grub_fshelp_filetype type = GRUB_FSHELP_UNKNOWN;

   grub_nilfs2_read_file (diro, 0, 0, 0,
     fpos + sizeof (struct grub_nilfs2_dir_entry),
     dirent.name_len, filename);
   if (grub_errno)
     return 0;

   fdiro = grub_malloc (sizeof (struct grub_fshelp_node));
   if (!fdiro)
     return 0;

   fdiro->data = diro->data;
   fdiro->ino = grub_le_to_cpu64 (dirent.inode);

   filename[dirent.name_len] = '\0';

   if (dirent.file_type != NILFS_FT_UNKNOWN)
     {
       fdiro->inode_read = 0;

       if (dirent.file_type == NILFS_FT_DIR)
  type = GRUB_FSHELP_DIR;
       else if (dirent.file_type == NILFS_FT_SYMLINK)
  type = GRUB_FSHELP_SYMLINK;
       else if (dirent.file_type == NILFS_FT_REG_FILE)
  type = GRUB_FSHELP_REG;
     }
   else
     {


       grub_nilfs2_read_inode (diro->data,
          grub_le_to_cpu64 (dirent.inode),
          &fdiro->inode);
       if (grub_errno)
  {
    grub_free (fdiro);
    return 0;
  }

       fdiro->inode_read = 1;

       if ((grub_le_to_cpu16 (fdiro->inode.i_mode)
     & FILETYPE_INO_MASK) == FILETYPE_INO_DIRECTORY)
  type = GRUB_FSHELP_DIR;
       else if ((grub_le_to_cpu16 (fdiro->inode.i_mode)
   & FILETYPE_INO_MASK) == FILETYPE_INO_SYMLINK)
  type = GRUB_FSHELP_SYMLINK;
       else if ((grub_le_to_cpu16 (fdiro->inode.i_mode)
   & FILETYPE_INO_MASK) == FILETYPE_INO_REG)
  type = GRUB_FSHELP_REG;
     }

   if (hook (filename, type, fdiro, closure))
     return 1;
 }

      fpos += grub_le_to_cpu16 (dirent.rec_len);
    }

  return 0;
}
