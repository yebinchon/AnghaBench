
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct grub_sfs_objc {int next; int * objects; } ;
struct TYPE_10__ {int size; int first_block; } ;
struct TYPE_9__ {int dir_objc; } ;
struct TYPE_11__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct grub_sfs_obj {int type; TYPE_3__ file_dir; scalar_t__ filename; } ;
struct grub_sfs_data {int blocksize; int disk; } ;
typedef TYPE_4__* grub_fshelp_node_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
struct TYPE_12__ {unsigned int block; struct grub_sfs_data* data; } ;


 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_REG ;
 int GRUB_FSHELP_SYMLINK ;
 int GRUB_SFS_TYPE_DELETED ;
 int GRUB_SFS_TYPE_DIR ;
 int GRUB_SFS_TYPE_SYMLINK ;
 unsigned int grub_be_to_cpu32 (int ) ;
 int grub_disk_read (int ,unsigned int,int ,int,char*) ;
 scalar_t__ grub_errno ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 scalar_t__ grub_sfs_create_node (char*,unsigned int,unsigned int,int,struct grub_sfs_data*,int (*) (char const*,int,TYPE_4__*,void*),void*) ;
 int grub_strlen (char*) ;

__attribute__((used)) static int
grub_sfs_iterate_dir (grub_fshelp_node_t dir,
        int (*hook) (const char *filename,
       enum grub_fshelp_filetype filetype,
       grub_fshelp_node_t node, void *closure),
        void *closure)
{
  struct grub_sfs_data *data = dir->data;
  char *objc_data;
  struct grub_sfs_objc *objc;
  unsigned int next = dir->block;
  int pos;

  objc_data = grub_malloc (data->blocksize);
  if (!objc_data)
    goto fail;



  while (next)
    {
      grub_disk_read (data->disk, next, 0, data->blocksize, objc_data);
      if (grub_errno)
 goto fail;

      objc = (struct grub_sfs_objc *) objc_data;

      pos = (char *) &objc->objects[0] - (char *) objc;


      while (pos + sizeof (struct grub_sfs_obj) < data->blocksize)
 {
   struct grub_sfs_obj *obj;
   obj = (struct grub_sfs_obj *) ((char *) objc + pos);
   char *filename = (char *) (obj->filename);
   int len;
   enum grub_fshelp_filetype type;
   unsigned int block;



   len = grub_strlen (filename);
   len += grub_strlen (filename + len + 1);

   pos += sizeof (*obj) + len;

   pos = ((pos + 1) >> 1) << 1;

   if (grub_strlen (filename) == 0)
     continue;


   if (obj->type & GRUB_SFS_TYPE_DELETED)
     continue;
   else if (obj->type & GRUB_SFS_TYPE_SYMLINK)
     type = GRUB_FSHELP_SYMLINK;
   else if (obj->type & GRUB_SFS_TYPE_DIR)
     type = GRUB_FSHELP_DIR;
   else
     type = GRUB_FSHELP_REG;

   if (type == GRUB_FSHELP_DIR)
     block = grub_be_to_cpu32 (obj->file_dir.dir.dir_objc);
   else
     block = grub_be_to_cpu32 (obj->file_dir.file.first_block);

   if (grub_sfs_create_node (filename, block,
        grub_be_to_cpu32 (obj->file_dir.file.size),
        type, data, hook, closure))
     {
       grub_free (objc_data);
       return 1;
     }
 }

      next = grub_be_to_cpu32 (objc->next);
    }

 fail:
  grub_free (objc_data);
  return 0;
}
