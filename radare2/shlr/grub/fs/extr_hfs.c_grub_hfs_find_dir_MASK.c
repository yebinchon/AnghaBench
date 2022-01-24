#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_hfs_filerec {scalar_t__ type; } ;
struct grub_hfs_dirrec {int /*<<< orphan*/  dirid; } ;
struct grub_hfs_data {int rootdir; int /*<<< orphan*/  cat_root; } ;
struct grub_hfs_catalog_key {scalar_t__ str; scalar_t__ strlen; int /*<<< orphan*/  parent_dir; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILENAME ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 scalar_t__ GRUB_HFS_FILETYPE_DIR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_hfs_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_hfs_filerec*,struct grub_hfs_filerec*,int) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 char* FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static grub_err_t
FUNC10 (struct grub_hfs_data *data, const char *path,
		   struct grub_hfs_filerec *retdata, int *retinode)
{
  int inode = data->rootdir;
  char *next;
  char *origpath;
  union {
    struct grub_hfs_filerec frec;
    struct grub_hfs_dirrec dir;
  } fdrec;

  fdrec.frec.type = GRUB_HFS_FILETYPE_DIR;

  if (path[0] != '/')
    {
      FUNC2 (GRUB_ERR_BAD_FILENAME, "bad filename");
      return 0;
    }

  origpath = FUNC8 (path);
  if (!origpath)
    return grub_errno;

  path = origpath;
  while (*path == '/')
    path++;

  while (path && FUNC9 (path))
    {
      if (fdrec.frec.type != GRUB_HFS_FILETYPE_DIR)
	{
	  FUNC2 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
	  goto fail;
	}

      /* Isolate a part of the path.  */
      next = FUNC6 (path, '/');
      if (next)
	{
	  while (*next == '/')
	    *(next++) = '\0';
	}

      struct grub_hfs_catalog_key key;

      key.parent_dir = FUNC1 (inode);
      key.strlen = FUNC9 (path);
      FUNC7 ((char *) (key.str), path);

      /* Lookup this node.  */
      if (! FUNC4 (data, (char *) &key, data->cat_root,
				0, (char *) &fdrec.frec, sizeof (fdrec.frec)))
	{
	  FUNC2 (GRUB_ERR_FILE_NOT_FOUND, "file not found");
	  goto fail;
	}

      if (grub_errno)
	goto fail;

      inode = FUNC0 (fdrec.dir.dirid);
      path = next;
    }

  if (retdata)
    FUNC5 (retdata, &fdrec.frec, sizeof (fdrec.frec));

  if (retinode)
    *retinode = inode;

 fail:
  FUNC3 (origpath);
  return grub_errno;
}