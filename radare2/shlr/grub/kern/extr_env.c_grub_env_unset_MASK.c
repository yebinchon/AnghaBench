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
struct grub_env_var {struct grub_env_var* value; struct grub_env_var* name; scalar_t__ write_hook; scalar_t__ read_hook; } ;

/* Variables and functions */
 struct grub_env_var* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_env_var*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_env_var*) ; 

void
FUNC4 (const char *name)
{
  struct grub_env_var *var;

  var = FUNC0 (name);
  if (! var)
    return;

  if (var->read_hook || var->write_hook)
    {
      FUNC2 (name, "");
      return;
    }

  FUNC1 (var);

  FUNC3 (var->name);
  FUNC3 (var->value);
  FUNC3 (var);
}