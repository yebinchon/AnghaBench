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
struct media {int dummy; } ;
struct file_browser {char* home; char* directory; char* desktop; int /*<<< orphan*/  dir_count; void* directories; int /*<<< orphan*/  file_count; void* files; struct media* media; } ;
struct TYPE_2__ {char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PATH_LEN ; 
 void* FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct file_browser*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct file_browser *browser, struct media *media)
{
    FUNC4(browser, 0, sizeof(*browser));
    browser->media = media;
    {
        /* load files and sub-directory list */
        const char *home = FUNC1("HOME");
#ifdef _WIN32
        if (!home) home = getenv("USERPROFILE");
#else
        if (!home) home = FUNC2(FUNC3())->pw_dir;
        {
            size_t l;
            FUNC7(browser->home, home, MAX_PATH_LEN);
            l = FUNC6(browser->home);
            FUNC5(browser->home + l, "/");
            FUNC5(browser->directory, browser->home);
        }
#endif
        {
            size_t l;
            FUNC5(browser->desktop, browser->home);
            l = FUNC6(browser->desktop);
            FUNC5(browser->desktop + l, "desktop/");
        }
        browser->files = FUNC0(browser->directory, 0, &browser->file_count);
        browser->directories = FUNC0(browser->directory, 1, &browser->dir_count);
    }
}