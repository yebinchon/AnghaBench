#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct grub_hfsplus_iterate_dir_closure {int (* hook ) (char*,int,struct grub_fshelp_node*,int /*<<< orphan*/ ) ;int ret; int /*<<< orphan*/  closure; TYPE_2__* dir; } ;
struct grub_hfsplus_catkey {int keylen; int namelen; int* name; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  extents; } ;
struct grub_hfsplus_catfile {int type; int mode; int /*<<< orphan*/  fileid; TYPE_3__ data; int /*<<< orphan*/  mtime; } ;
struct grub_fshelp_node {scalar_t__ fileid; int /*<<< orphan*/  size; scalar_t__ mtime; int /*<<< orphan*/  extents; TYPE_1__* data; } ;
typedef  int /*<<< orphan*/  grub_uint8_t ;
typedef  enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
struct TYPE_5__ {scalar_t__ fileid; TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  case_sensitive; } ;

/* Variables and functions */
 int GRUB_FSHELP_CASE_INSENSITIVE ; 
 int GRUB_FSHELP_DIR ; 
 int GRUB_FSHELP_REG ; 
 int GRUB_FSHELP_SYMLINK ; 
 int GRUB_FSHELP_UNKNOWN ; 
 int GRUB_HFSPLUS_FILEMODE_MASK ; 
 int GRUB_HFSPLUS_FILEMODE_REG ; 
 int GRUB_HFSPLUS_FILEMODE_SYMLINK ; 
 int GRUB_HFSPLUS_FILETYPE_DIR ; 
 int GRUB_HFSPLUS_FILETYPE_REG ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC8 (char*,int,struct grub_fshelp_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (void *record, void *closure)
{
  struct grub_hfsplus_iterate_dir_closure *c = closure;
  struct grub_hfsplus_catkey *catkey;
  char *filename;
  int i;
  struct grub_fshelp_node *node;
  struct grub_hfsplus_catfile *fileinfo;
  enum grub_fshelp_filetype type = GRUB_FSHELP_UNKNOWN;

  catkey = (struct grub_hfsplus_catkey *) record;

  fileinfo =
    (struct grub_hfsplus_catfile *) ((char *) record
				     + FUNC0 (catkey->keylen)
				     + 2 + (FUNC0(catkey->keylen)
					    % 2));

  /* Stop iterating when the last directory entry is found.  */
  if (FUNC1 (catkey->parent) != c->dir->fileid)
    return 1;

  /* Determine the type of the node that is found.  */
  if (FUNC0 (fileinfo->type) == GRUB_HFSPLUS_FILETYPE_REG)
    {
      int mode = (FUNC0 (fileinfo->mode)
		  & GRUB_HFSPLUS_FILEMODE_MASK);

      if (mode == GRUB_HFSPLUS_FILEMODE_REG)
	type = GRUB_FSHELP_REG;
      else if (mode == GRUB_HFSPLUS_FILEMODE_SYMLINK)
	type = GRUB_FSHELP_SYMLINK;
      else
	type = GRUB_FSHELP_UNKNOWN;
    }
  else if (FUNC0 (fileinfo->type) == GRUB_HFSPLUS_FILETYPE_DIR)
    type = GRUB_FSHELP_DIR;

  if (type == GRUB_FSHELP_UNKNOWN)
    return 0;

  /* Make sure the byte order of the UTF16 string is correct.  */
  for (i = 0; i < FUNC0 (catkey->namelen); i++)
    {
      catkey->name[i] = FUNC0 (catkey->name[i]);

      /* If the name is obviously invalid, skip this node.  */
      if (catkey->name[i] == 0)
	return 0;
    }

  filename = FUNC4 (FUNC0 (catkey->namelen) + 1);
  if (! filename)
    return 0;

  if (! FUNC7 ((grub_uint8_t *) filename, catkey->name,
			    FUNC0 (catkey->namelen)))
    {
      FUNC3 (filename);
      return 0;
    }

  filename[FUNC0 (catkey->namelen)] = '\0';

  /* Restore the byte order to what it was previously.  */
  for (i = 0; i < FUNC0 (catkey->namelen); i++)
    catkey->name[i] = FUNC0 (catkey->name[i]);

  /* hfs+ is case insensitive.  */
  if (! c->dir->data->case_sensitive)
    type |= GRUB_FSHELP_CASE_INSENSITIVE;

  /* Only accept valid nodes.  */
  if (FUNC6 (filename) == FUNC0 (catkey->namelen))
    {
      /* A valid node is found; setup the node and call the
	 callback function.  */
      node = FUNC4 (sizeof (*node));
      node->data = c->dir->data;

      FUNC5 (node->extents, fileinfo->data.extents,
		   sizeof (node->extents));
      node->mtime = FUNC1 (fileinfo->mtime) - 2082844800;
      node->size = FUNC2 (fileinfo->data.size);
      node->fileid = FUNC1 (fileinfo->fileid);

      if (c->hook == NULL)
        c->ret = 0;
      else
        c->ret = c->hook (filename, type, node, c->closure);
    }

  FUNC3 (filename);

  return c->ret;
}