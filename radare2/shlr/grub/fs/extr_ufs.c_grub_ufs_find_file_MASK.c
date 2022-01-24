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
struct grub_ufs_dirent {int namelen_bsd; int /*<<< orphan*/  direntlen; int /*<<< orphan*/  ino; int /*<<< orphan*/  namelen; int /*<<< orphan*/  member_0; } ;
struct grub_ufs_data {int ino; int /*<<< orphan*/  be; } ;
typedef  scalar_t__ grub_err_t ;
typedef  int /*<<< orphan*/  dirent ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int GRUB_UFS_ATTR_DIR ; 
 int GRUB_UFS_ATTR_LNK ; 
 int GRUB_UFS_ATTR_TYPE ; 
 int FUNC0 (struct grub_ufs_data*) ; 
 unsigned int FUNC1 (struct grub_ufs_data*) ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct grub_ufs_data*,int) ; 
 scalar_t__ FUNC12 (struct grub_ufs_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct grub_ufs_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC14 (struct grub_ufs_data *data, const char *path)
{
  char * fpath = FUNC4(FUNC10 (path) + 1);
  char *name = fpath;
  char *next;
  unsigned int pos = 0;
  int dirino;

  FUNC9 (fpath, path);

  /* Skip the first slash.  */
  if (name[0] == '/')
    {
      name++;
      if (!*name)
        {
          FUNC3 (fpath);
          return 0;
        }
    }

  /* Extract the actual part from the pathname.  */
  next = FUNC7 (name, '/');
  if (next)
    {
      next[0] = '\0';
      next++;
    }

  do
    {
      struct grub_ufs_dirent dirent = {0};
      int namelen;

      if (FUNC10 (name) == 0)
        {
          FUNC3 (fpath);
          return GRUB_ERR_NONE;
        }

      if (FUNC12 (data, 0, 0, pos, sizeof (dirent),
			      (char *) &dirent) < 0)
        {
          FUNC3 (fpath);
          return grub_errno;
        }

#ifdef MODE_UFS2
      namelen = dirent.namelen_bsd;
#else
      namelen = FUNC5 (dirent.namelen, data->be);
#endif
      {
	char * filename = FUNC4(namelen + 1);
	if (FUNC12 (data, 0, 0, pos + sizeof (dirent),
				namelen, filename) < 0)
          {
            FUNC3 (fpath);
            FUNC3 (filename);
            return grub_errno;
          }

	filename[namelen] = '\0';

	if (!FUNC8 (name, filename))
	  {
	    dirino = data->ino;
	    FUNC13 (data, FUNC6 (dirent.ino, 
							  data->be), 0);

	    if ((FUNC0(data) & GRUB_UFS_ATTR_TYPE)
		== GRUB_UFS_ATTR_LNK)
	      {
		FUNC11 (data, dirino);
		if (grub_errno)
                  {
                    FUNC3 (fpath);
                    FUNC3 (filename);
                    return grub_errno;
                  }
	      }

	    if (!next)
              {
                FUNC3 (fpath);
                FUNC3 (filename);
                return 0;
              }

	    pos = 0;

	    name = next;
	    next = FUNC7 (name, '/');
	    if (next)
	      {
		next[0] = '\0';
		next++;
	      }

	    if ((FUNC0(data) & GRUB_UFS_ATTR_TYPE) != GRUB_UFS_ATTR_DIR)
              {
                FUNC3 (fpath);
                FUNC3 (filename);
                return FUNC2 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
              }

            FUNC3 (filename);
	    continue;
	  }
	FUNC3 (filename);
      }

      pos += FUNC5 (dirent.direntlen, data->be);
    } while (pos < FUNC1 (data));

  FUNC3 (fpath);
  FUNC2 (GRUB_ERR_FILE_NOT_FOUND, "file not found");
  return grub_errno;
}