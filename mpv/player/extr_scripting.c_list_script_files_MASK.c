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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char**,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_filename ; 
 char* FUNC3 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char**,int,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct stat*) ; 

__attribute__((used)) static char **FUNC8(void *talloc_ctx, char *path)
{
    char **files = NULL;
    int count = 0;
    DIR *dp = FUNC4(path);
    if (!dp)
        return NULL;
    struct dirent *ep;
    while ((ep = FUNC6(dp))) {
        char *fname = FUNC3(talloc_ctx, path, ep->d_name);
        struct stat s;
        if (!FUNC7(fname, &s) && FUNC1(s.st_mode))
            FUNC0(talloc_ctx, files, count, fname);
    }
    FUNC2(dp);
    if (files)
        FUNC5(files, count, sizeof(char *), compare_filename);
    FUNC0(talloc_ctx, files, count, NULL);
    return files;
}