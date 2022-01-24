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
struct spiffs_dirent {size_t type; int size; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  spiffs_DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct spiffs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const,int,char*) ; 

__attribute__((used)) static void FUNC6 (void)
{
  spiffs_DIR dir;
  if (!FUNC1 (&fs, "/", &dir))
    FUNC3 ("spiffs_opendir");
  struct spiffs_dirent de;
  while (FUNC2 (&dir, &de))
  {
    static const char types[] = "?fdhs"; // file, dir, hardlink, softlink
    char name[sizeof(de.name)+1] = { 0 };
    FUNC4 (name, de.name, sizeof(de.name));
    FUNC5("%c %6u %s\n", types[de.type], de.size, name);
  }
  FUNC0 (&dir);
}