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
struct grub_ntfs_attr {int /*<<< orphan*/  sbuf; int /*<<< orphan*/  edat_buf; int /*<<< orphan*/  emft_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (struct grub_ntfs_attr *at)
{
  FUNC0 (at->emft_buf);
  FUNC0 (at->edat_buf);
  FUNC0 (at->sbuf);
}