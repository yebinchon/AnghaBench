#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct grub_nilfs2_dir_entry {scalar_t__ rec_len; int name_len; scalar_t__ file_type; int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {scalar_t__ i_mode; int /*<<< orphan*/  i_size; } ;
struct grub_fshelp_node {int inode_read; unsigned int ino; TYPE_1__ inode; int /*<<< orphan*/  data; } ;
typedef  struct grub_fshelp_node* grub_fshelp_node_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (struct grub_fshelp_node*) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_fshelp_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6 (grub_fshelp_node_t dir,
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
      FUNC5 (diro->data, diro->ino, &diro->inode);
      if (grub_errno)
	return 0;
    }

  /* Iterate files.  */
  if (hook)
  while (fpos < FUNC2 (diro->inode.i_size))
    {
      struct grub_nilfs2_dir_entry dirent;

      FUNC4 (diro, 0, 0, 0, fpos,
			     sizeof (struct grub_nilfs2_dir_entry),
			     (char *) &dirent);
      if (grub_errno)
	return 0;

      if (dirent.rec_len == 0)
	return 0;

      if (dirent.name_len != 0)
	{
#ifndef _MSC_VER
	  char filename[dirent.name_len + 1];
#else
	  char * filename = grub_malloc(dirent.name_len + 1);
#endif
	  struct grub_fshelp_node *fdiro;
	  enum grub_fshelp_filetype type = GRUB_FSHELP_UNKNOWN;

	  FUNC4 (diro, 0, 0, 0,
				 fpos + sizeof (struct grub_nilfs2_dir_entry),
				 dirent.name_len, filename);
	  if (grub_errno)
	    return 0;

	  fdiro = FUNC3 (sizeof (struct grub_fshelp_node));
	  if (!fdiro)
	    return 0;

	  fdiro->data = diro->data;
	  fdiro->ino = FUNC2 (dirent.inode);

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
	      /* The filetype can not be read from the dirent, read
	         the inode to get more information.  */
	      FUNC5 (diro->data,
				      FUNC2 (dirent.inode),
				      &fdiro->inode);
	      if (grub_errno)
		{
		  FUNC0 (fdiro);
		  return 0;
		}

	      fdiro->inode_read = 1;

	      if ((FUNC1 (fdiro->inode.i_mode)
		   & FILETYPE_INO_MASK) == FILETYPE_INO_DIRECTORY)
		type = GRUB_FSHELP_DIR;
	      else if ((FUNC1 (fdiro->inode.i_mode)
			& FILETYPE_INO_MASK) == FILETYPE_INO_SYMLINK)
		type = GRUB_FSHELP_SYMLINK;
	      else if ((FUNC1 (fdiro->inode.i_mode)
			& FILETYPE_INO_MASK) == FILETYPE_INO_REG)
		type = GRUB_FSHELP_REG;
	    }

	  if (hook (filename, type, fdiro, closure))
	    return 1;
	}

      fpos += FUNC1 (dirent.rec_len);
    }

  return 0;
}