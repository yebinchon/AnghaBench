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
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_NOT_IMPLEMENTED_YET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static grub_err_t
FUNC1 (grub_device_t device 
		    , char **label)
{
  /* XXX: It's not documented how to read a label.  */
  return FUNC0 (GRUB_ERR_NOT_IMPLEMENTED_YET,
		     "reading the label of a HFS+ "
		     "partition is not implemented");
}