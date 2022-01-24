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
struct grub_fshelp_find_file_closure {int (* iterate_dir ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct find_file_closure*) ;int symlinknest; char* (* read_symlink ) (int /*<<< orphan*/ ) ;int foundtype; int /*<<< orphan*/  rootnode; int /*<<< orphan*/  currroot; } ;
struct find_file_closure {char* name; int* type; int /*<<< orphan*/ * currnode; int /*<<< orphan*/ * oldnode; } ;
typedef  int /*<<< orphan*/  grub_fshelp_node_t ;
typedef  scalar_t__ grub_err_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  GRUB_ERR_SYMLINK_LOOP ; 
 int GRUB_FSHELP_DIR ; 
 int GRUB_FSHELP_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct grub_fshelp_find_file_closure*) ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  iterate ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct find_file_closure*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC9 (const char *currpath, grub_fshelp_node_t currroot,
	   grub_fshelp_node_t *currfound,
	   struct grub_fshelp_find_file_closure *c)
{
	char *fpath = FUNC3 (FUNC5 (currpath) + 1);
  char *name = fpath;
  char *next;
  enum grub_fshelp_filetype type = GRUB_FSHELP_DIR;
  grub_fshelp_node_t currnode = currroot;
  grub_fshelp_node_t oldnode = currroot;

  c->currroot = currroot;

  FUNC6 (fpath, currpath, FUNC5 (currpath) + 1);

  /* Remove all leading slashes.  */
  while (*name == '/')
    name++;

  if (! *name)
    {
      *currfound = currnode;
      FUNC2 (fpath);
      return 0;
    }

  for (;;)
    {
      int found;
      struct find_file_closure cc;

      /* Extract the actual part from the pathname.  */
      next = FUNC4 (name, '/');
      if (next)
	{
	  /* Remove all leading slashes.  */
	  while (*next == '/')
	    *(next++) = '\0';
	}

      /* At this point it is expected that the current node is a
	 directory, check if this is true.  */
      if (type != GRUB_FSHELP_DIR)
	{
	  FUNC0 (currnode, c);
	  FUNC2 (fpath);
	  return FUNC1 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
	}

      cc.name = name;
      cc.type = &type;
      cc.oldnode = &oldnode;
      cc.currnode = &currnode;
      /* Iterate over the directory.  */
      found = c->iterate_dir (currnode, iterate, &cc);
      if (! found)
	{
	  if (grub_errno) {
	    FUNC2 (fpath);
	    return grub_errno;
}

	  break;
	}

      /* Read in the symlink and follow it.  */
      if (type == GRUB_FSHELP_SYMLINK)
	{
	  char *symlink;

	  /* Test if the symlink does not loop.  */
	  if (++(c->symlinknest) == 8)
	    {
	      FUNC0 (currnode, c);
	      FUNC0 (oldnode, c);
	      FUNC2 (fpath);
	      return FUNC1 (GRUB_ERR_SYMLINK_LOOP,
				 "too deep nesting of symlinks");
	    }

	  symlink = c->read_symlink (currnode);
	  FUNC0 (currnode, c);

	  if (!symlink)
	    {
	      FUNC0 (oldnode, c);
 	      FUNC2 (fpath);
	      return grub_errno;
	    }

	  /* The symlink is an absolute path, go back to the root inode.  */
	  if (symlink[0] == '/')
	    {
	      FUNC0 (oldnode, c);
	      oldnode = c->rootnode;
	    }

	  /* Lookup the node the symlink points to.  */
	  FUNC9 (symlink, oldnode, &currnode, c);
	  type = c->foundtype;
	  FUNC2 (symlink);

	  if (grub_errno)
	    {
	      FUNC0 (oldnode, c);
 	      FUNC2 (fpath);
	      return grub_errno;
	    }
	}

      FUNC0 (oldnode, c);

      /* Found the node!  */
      if (! next || *next == '\0')
	{
	  *currfound = currnode;
	  c->foundtype = type;
          FUNC2 (fpath);
	  return 0;
	}

      name = next;
    }

  FUNC2 (fpath);
  return FUNC1 (GRUB_ERR_FILE_NOT_FOUND, "file not found");
}