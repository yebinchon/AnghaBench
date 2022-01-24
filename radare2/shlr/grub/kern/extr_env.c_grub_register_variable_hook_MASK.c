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
struct grub_env_var {int /*<<< orphan*/  write_hook; int /*<<< orphan*/  read_hook; } ;
typedef  scalar_t__ grub_err_t ;
typedef  int /*<<< orphan*/  grub_env_write_hook_t ;
typedef  int /*<<< orphan*/  grub_env_read_hook_t ;

/* Variables and functions */
 scalar_t__ GRUB_ERR_NONE ; 
 struct grub_env_var* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ grub_errno ; 

grub_err_t
FUNC2 (const char *name,
			     grub_env_read_hook_t read_hook,
			     grub_env_write_hook_t write_hook)
{
  struct grub_env_var *var = FUNC0 (name);

  if (! var)
    {
      if (FUNC1 (name, "") != GRUB_ERR_NONE)
	return grub_errno;

      var = FUNC0 (name);
      /* XXX Insert an assertion?  */
    }

  if (var) {
	  var->read_hook = read_hook;
	  var->write_hook = write_hook;
  }

  return GRUB_ERR_NONE;
}