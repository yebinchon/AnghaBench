#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; scalar_t__ attr_end; } ;
struct grub_ntfs_file {int inode_read; TYPE_2__ attr; int /*<<< orphan*/  size; int /*<<< orphan*/ * buf; int /*<<< orphan*/  sector; TYPE_1__* data; } ;
typedef  int /*<<< orphan*/  grub_uint32_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
struct TYPE_4__ {int mft_size; } ;

/* Variables and functions */
 int AF_ALST ; 
 int /*<<< orphan*/  AT_DATA ; 
 int BLK_SHR ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct grub_ntfs_file*) ; 
 char* FUNC3 (TYPE_2__*,struct grub_ntfs_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static grub_err_t
FUNC8 (struct grub_ntfs_file *mft, grub_uint32_t mftno)
{
  unsigned short flag;

  mft->inode_read = 1;

  mft->buf = FUNC1 (mft->data->mft_size << BLK_SHR);
  if (mft->buf == NULL)
    return grub_errno;

  if (FUNC4 (mft->data, mft->buf, mftno, &mft->sector))
    return grub_errno;

  flag = FUNC5 (mft->buf, 0x16);
  if ((flag & 1) == 0)
    return FUNC0 (GRUB_ERR_BAD_FS, "MFT 0x%X is not in use", mftno);

  if ((flag & 2) == 0)
    {
      char *pa;

      pa = FUNC3 (&mft->attr, mft, AT_DATA);
      if (pa == NULL)
	return FUNC0 (GRUB_ERR_BAD_FS, "no $DATA in MFT 0x%X", mftno);

      if (!pa[8])
	mft->size = FUNC6 (pa, 0x10);
      else
	mft->size = FUNC7 (pa, 0x30);

      if ((mft->attr.flags & AF_ALST) == 0)
	mft->attr.attr_end = 0;	/*  Don't jump to attribute list */
    }
  else
    FUNC2 (&mft->attr, mft);

  return 0;
}