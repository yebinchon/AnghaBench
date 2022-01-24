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
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FILE_NETCONFIG ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool_t FUNC7()
{
    FILE *fd;
#ifdef __REACTOS__
    char config_path[MAX_PATH];

    if (GetSystemDirectoryA(config_path, ARRAYSIZE(config_path)))
    {
        StringCchCatA(config_path, ARRAYSIZE(config_path), "\\drivers\\etc\\netconfig");
    }
    else
    {
        StringCchCopyA(config_path, ARRAYSIZE(config_path), "C:\\ReactOS\\system32\\drivers\\etc\\netconfig");
    }

    fd = fopen(config_path, "r");
#else
     
    fd = FUNC5(FILE_NETCONFIG, "r");
#endif
    if (fd == NULL) {
#ifdef __REACTOS__
        fprintf(stderr,"nfsd() failed to open file '%s'\n", config_path);
#else
        FUNC6(stderr,"nfsd() failed to open file '%s'\n", FILE_NETCONFIG);
#endif
        return FALSE;
    }
    FUNC4(fd);
    return TRUE;
}