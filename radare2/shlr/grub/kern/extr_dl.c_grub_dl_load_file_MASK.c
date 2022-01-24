#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ grub_ssize_t ;
typedef  int /*<<< orphan*/ * grub_file_t ;
typedef  TYPE_1__* grub_dl_t ;
struct TYPE_4__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (scalar_t__) ; 

grub_dl_t
FUNC7 (const char *filename)
{
  grub_file_t file = NULL;
  grub_ssize_t size;
  void *core = 0;
  grub_dl_t mod = 0;

  file = FUNC2 (filename);
  if (! file)
    return 0;

  size = FUNC4 (file);
  core = FUNC6 (size);
  if (! core)
    {
      FUNC1 (file);
      return 0;
    }

  if (FUNC3 (file, core, size) != (int) size)
    {
      FUNC1 (file);
      FUNC5 (core);
      return 0;
    }

  /* We must close this before we try to process dependencies.
     Some disk backends do not handle gracefully multiple concurrent
     opens of the same device.  */
  FUNC1 (file);

  mod = FUNC0 (core, size);
  if (! mod)
    {
      FUNC5 (core);
      return 0;
    }

  mod->ref_count = 0;
  return mod;
}