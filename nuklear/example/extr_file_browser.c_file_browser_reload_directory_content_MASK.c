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
struct file_browser {int /*<<< orphan*/  dir_count; void* directories; int /*<<< orphan*/  file_count; void* files; int /*<<< orphan*/  directory; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PATH_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct file_browser *browser, const char *path)
{
    FUNC2(browser->directory, path, MAX_PATH_LEN);
    FUNC0(browser->files, browser->file_count);
    FUNC0(browser->directories, browser->dir_count);
    browser->files = FUNC1(path, 0, &browser->file_count);
    browser->directories = FUNC1(path, 1, &browser->dir_count);
}