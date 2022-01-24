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
struct grub_ntfs_file {int dummy; } ;
struct grub_ntfs_attr {int flags; } ;

/* Variables and functions */
 int AF_ALST ; 
 int /*<<< orphan*/  GRUB_ERR_NONE ; 
 char* FUNC0 (struct grub_ntfs_attr*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_ntfs_attr*) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_ntfs_attr*,struct grub_ntfs_file*) ; 

__attribute__((used)) static char *
FUNC3 (struct grub_ntfs_attr *at, struct grub_ntfs_file *mft,
	     unsigned char attr)
{
  char *pa;

  FUNC2 (at, mft);
  if ((pa = FUNC0 (at, attr)) == NULL)
    return NULL;
  if ((at->flags & AF_ALST) == 0)
    {
      while (1)
	{
	  if ((pa = FUNC0 (at, attr)) == NULL)
	    break;
	  if (at->flags & AF_ALST)
	    return pa;
	}
      grub_errno = GRUB_ERR_NONE;
      FUNC1 (at);
      FUNC2 (at, mft);
      pa = FUNC0 (at, attr);
    }
  return pa;
}