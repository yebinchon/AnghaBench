#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* grub_dl_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_MODULE ; 
 int /*<<< orphan*/  GRUB_ERR_FILE_NOT_FOUND ; 
 TYPE_1__* FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC6 (char*,char*,char const*) ; 

grub_dl_t
FUNC7 (const char *name)
{
#if GRUB_NO_MODULES
  (void) name;
  return 0;
#else
  char *filename;
  grub_dl_t mod;
  char *grub_dl_dir = FUNC2 ("prefix");

  mod = FUNC0 (name);
  if (mod)
    return mod;

  if (! grub_dl_dir) {
    FUNC3 (GRUB_ERR_FILE_NOT_FOUND, "\"prefix\" is not set");
    return 0;
  }

  filename = FUNC6 ("%s/%s.mod", grub_dl_dir, name);
  if (! filename)
    return 0;

  mod = FUNC1 (filename);
  FUNC4 (filename);

  if (! mod)
    return 0;

  if (FUNC5 (mod->name, name) != 0)
    FUNC3 (GRUB_ERR_BAD_MODULE, "mismatched names");

  return mod;
#endif
}