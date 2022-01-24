#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grub_jfs_diropen {int ino; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  inode; } ;
struct grub_jfs_data {TYPE_1__ currinode; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 scalar_t__ GRUB_ERR_NONE ; 
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ; 
 int GRUB_JFS_AGGR_INODE ; 
 int GRUB_JFS_FILETYPE_LNK ; 
 int GRUB_JFS_FILETYPE_MASK ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_jfs_diropen*) ; 
 scalar_t__ FUNC3 (struct grub_jfs_diropen*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_jfs_data*,int) ; 
 struct grub_jfs_diropen* FUNC5 (struct grub_jfs_data*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct grub_jfs_data*,int,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static grub_err_t
FUNC13 (struct grub_jfs_data *data, const char *path)
{
  char * fpath = FUNC8(FUNC11 (path));
  char *name = fpath;
  char *next;
  struct grub_jfs_diropen *diro;

  FUNC12 (fpath, path, FUNC11 (path) + 1);

  if (FUNC6 (data, GRUB_JFS_AGGR_INODE, &data->currinode))
    {
      FUNC1 (fpath);
      return grub_errno;
    }

  /* Skip the first slashes.  */
  while (*name == '/')
    {
      name++;
      if (!*name)
        {
          FUNC1 (fpath);
          return 0;
        }
    }

  /* Extract the actual part from the pathname.  */
  next = FUNC9 (name, '/');
  if (next)
    {
      while (*next == '/')
	{
	  next[0] = '\0';
	  next++;
	}
    }
  diro = FUNC5 (data, &data->currinode);
  if (!diro)
    {
      FUNC1 (fpath);
      return grub_errno;
    }

  for (;;)
    {
      if (FUNC11 (name) == 0)
        {
          FUNC1 (fpath);
          return GRUB_ERR_NONE;
        }

      if (FUNC3 (diro) == GRUB_ERR_OUT_OF_RANGE)
	break;

      /* Check if the current direntry matches the current part of the
	 pathname.  */
      if (!FUNC10 (name, diro->name))
	{
	  int ino = diro->ino;
	  int dirino = FUNC7 (data->currinode.inode);

	  FUNC2 (diro);
	  diro = 0;

	  if (FUNC6 (data, ino, &data->currinode))
	    break;

	  /* Check if this is a symlink.  */
	  if ((FUNC7 (data->currinode.mode)
	       & GRUB_JFS_FILETYPE_MASK) == GRUB_JFS_FILETYPE_LNK)
	    {
	      FUNC4 (data, dirino);
	      if (grub_errno)
                {
                  FUNC1 (fpath);
                  return grub_errno;
                }
	    }

	  if (!next)
            {
              FUNC1 (fpath);
	      return 0;
            }

	  name = next;
	  next = FUNC9 (name, '/');
	  if (next)
	    {
	      next[0] = '\0';
	      next++;
	    }

	  /* Open this directory for reading dirents.  */
	  diro = FUNC5 (data, &data->currinode);
	  if (!diro)
            {
              FUNC1 (fpath);
              return grub_errno;
            }

	  continue;
	}
    }

  FUNC2 (diro);
  FUNC0 (GRUB_ERR_FILE_NOT_FOUND, "file not found");
  FUNC1 (fpath);
  return grub_errno;
}