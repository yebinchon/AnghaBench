#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct grub_env_var {int /*<<< orphan*/  name; struct grub_env_var* next; } ;
struct TYPE_2__ {struct grub_env_var** vars; } ;

/* Variables and functions */
 TYPE_1__* grub_current_context ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

struct grub_env_var *
FUNC2 (const char *name)
{
  struct grub_env_var *var;
  int idx = FUNC0 (name);

  /* Look for the variable in the current context.  */
  for (var = grub_current_context->vars[idx]; var; var = var->next)
    if (FUNC1 (var->name, name) == 0)
      return var;

  return 0;
}