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
struct grub_env_var {char* (* read_hook ) (struct grub_env_var*,char*) ;char* value; } ;

/* Variables and functions */
 struct grub_env_var* FUNC0 (char const*) ; 
 char* FUNC1 (struct grub_env_var*,char*) ; 

char *
FUNC2 (const char *name)
{
  struct grub_env_var *var;

  var = FUNC0 (name);
  if (! var)
    return 0;

  if (var->read_hook)
    return var->read_hook (var, var->value);

  return var->value;
}