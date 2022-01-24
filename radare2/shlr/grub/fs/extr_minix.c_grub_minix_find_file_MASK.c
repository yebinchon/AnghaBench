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
struct grub_minix_data {int filename_size; int ino; } ;
typedef  int /*<<< orphan*/  ino ;
typedef  int /*<<< orphan*/  grub_uint16_t ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int GRUB_MINIX_IFDIR ; 
 int GRUB_MINIX_IFLNK ; 
 int FUNC0 (struct grub_minix_data*) ; 
 unsigned int FUNC1 (struct grub_minix_data*) ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct grub_minix_data*,int) ; 
 scalar_t__ FUNC7 (struct grub_minix_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct grub_minix_data*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static grub_err_t
FUNC13 (struct grub_minix_data *data, const char *path)
{
  char * fpath = FUNC5(FUNC12 (path) + 1);
  char *name = fpath;
  char *next;
  unsigned int pos = 0;
  int dirino;

  FUNC11 (fpath, path);

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
  next = FUNC9 (name, '/');
  if (next)
    {
      next[0] = '\0';
      next++;
    }

  do
    {
      grub_uint16_t ino;
      char * filename = FUNC5(data->filename_size + 1);
      if (FUNC12 (name) == 0)
        {
          FUNC3 (fpath);
          FUNC3 (filename);
          return GRUB_ERR_NONE;
        }

      if (FUNC7 (data, 0, 0, pos, sizeof (ino),
				(char *) &ino) < 0)
        {
          FUNC3 (fpath);
          FUNC3 (filename);
          return grub_errno;
        }
      if (FUNC7 (data, 0, 0, pos + sizeof (ino),
				data->filename_size, (char *) filename)< 0)
        {
          FUNC3 (fpath);
          FUNC3 (filename);
          return grub_errno;
        }

      filename[data->filename_size] = '\0';

      /* Check if the current direntry matches the current part of the
	 pathname.  */
      if (!FUNC10 (name, filename))
	{
	  dirino = data->ino;
	  FUNC8 (data, FUNC4 (ino));

	  /* Follow the symlink.  */
	  if ((FUNC0 (data)
	       & GRUB_MINIX_IFLNK) == GRUB_MINIX_IFLNK)
	    {
	      FUNC6 (data, dirino);
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
	  next = FUNC9 (name, '/');
	  if (next)
	    {
	      next[0] = '\0';
	      next++;
	    }

     	  if ((FUNC0 (data)
	       & GRUB_MINIX_IFDIR) != GRUB_MINIX_IFDIR)
            {
              FUNC3 (fpath);
              FUNC3 (filename);
              return FUNC2 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
            }
          FUNC3 (filename);
	  continue;
	}

      pos += sizeof (ino) + data->filename_size;
    } while (pos < FUNC1 (data));

  FUNC3 (fpath);
  FUNC2 (GRUB_ERR_FILE_NOT_FOUND, "file not found");
  return grub_errno;
}