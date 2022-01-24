#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* grub_file_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
struct TYPE_7__ {scalar_t__ device; TYPE_1__* fs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

grub_err_t
FUNC3 (grub_file_t file)
{
  if (file->fs->close)
    (file->fs->close) (file);

  if (file->device)
    FUNC0 (file->device);
  FUNC1 (file);
  return grub_errno;
}