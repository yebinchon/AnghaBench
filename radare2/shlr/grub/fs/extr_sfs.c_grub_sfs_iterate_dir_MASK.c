#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct grub_sfs_objc {int /*<<< orphan*/  next; int /*<<< orphan*/ * objects; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  first_block; } ;
struct TYPE_9__ {int /*<<< orphan*/  dir_objc; } ;
struct TYPE_11__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct grub_sfs_obj {int type; TYPE_3__ file_dir; scalar_t__ filename; } ;
struct grub_sfs_data {int blocksize; int /*<<< orphan*/  disk; } ;
typedef  TYPE_4__* grub_fshelp_node_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
struct TYPE_12__ {unsigned int block; struct grub_sfs_data* data; } ;

/* Variables and functions */
 int GRUB_FSHELP_DIR ; 
 int GRUB_FSHELP_REG ; 
 int GRUB_FSHELP_SYMLINK ; 
 int GRUB_SFS_TYPE_DELETED ; 
 int GRUB_SFS_TYPE_DIR ; 
 int GRUB_SFS_TYPE_SYMLINK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,unsigned int,unsigned int,int,struct grub_sfs_data*,int (*) (char const*,int,TYPE_4__*,void*),void*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6 (grub_fshelp_node_t dir,
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

  objc_data = FUNC3 (data->blocksize);
  if (!objc_data)
    goto fail;

  /* The Object container can consist of multiple blocks, iterate over
     every block.  */
  while (next)
    {
      FUNC1 (data->disk, next, 0, data->blocksize, objc_data);
      if (grub_errno)
	goto fail;

      objc = (struct grub_sfs_objc *) objc_data;

      pos = (char *) &objc->objects[0] - (char *) objc;

      /* Iterate over all entries in this block.  */
      while (pos + sizeof (struct grub_sfs_obj) < data->blocksize)
	{
	  struct grub_sfs_obj *obj;
	  obj = (struct grub_sfs_obj *) ((char *) objc + pos);
	  char *filename = (char *) (obj->filename);
	  int len;
	  enum grub_fshelp_filetype type;
	  unsigned int block;

	  /* The filename and comment dynamically increase the size of
	     the object.  */
	  len = FUNC5 (filename);
	  len += FUNC5 (filename + len + 1);

	  pos += sizeof (*obj) + len;
	  /* Round up to a multiple of two bytes.  */
	  pos = ((pos + 1) >> 1) << 1;

	  if (FUNC5 (filename) == 0)
	    continue;

	  /* First check if the file was not deleted.  */
	  if (obj->type & GRUB_SFS_TYPE_DELETED)
	    continue;
	  else if (obj->type & GRUB_SFS_TYPE_SYMLINK)
	    type = GRUB_FSHELP_SYMLINK;
	  else if (obj->type & GRUB_SFS_TYPE_DIR)
	    type = GRUB_FSHELP_DIR;
	  else
	    type = GRUB_FSHELP_REG;

	  if (type == GRUB_FSHELP_DIR)
	    block = FUNC0 (obj->file_dir.dir.dir_objc);
	  else
	    block = FUNC0 (obj->file_dir.file.first_block);

	  if (FUNC4 (filename, block,
				    FUNC0 (obj->file_dir.file.size),
				    type, data, hook, closure))
	    {
	      FUNC2 (objc_data);
	      return 1;
	    }
	}

      next = FUNC0 (objc->next);
    }

 fail:
  FUNC2 (objc_data);
  return 0;
}