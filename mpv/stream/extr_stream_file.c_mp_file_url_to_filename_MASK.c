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
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *FUNC6(void *talloc_ctx, bstr url)
{
    bstr proto = FUNC3(url, &url);
    if (FUNC0(proto, "file") != 0)
        return NULL;
    char *filename = FUNC1(talloc_ctx, url);
    FUNC4(filename);
#if HAVE_DOS_PATHS
    // extract '/' from '/x:/path'
    if (filename[0] == '/' && filename[1] && filename[2] == ':')
        memmove(filename, filename + 1, strlen(filename)); // including \0
#endif
    return filename;
}