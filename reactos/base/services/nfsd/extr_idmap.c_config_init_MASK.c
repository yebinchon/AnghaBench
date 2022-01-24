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
struct idmap_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* CONFIG_FILENAME ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct idmap_config*) ; 
 int FUNC5 (struct idmap_config*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(
    struct idmap_config *config)
{
    int status;
#ifdef __REACTOS__
    char config_path[MAX_PATH];
#endif

    /* load default values */
    status = FUNC4(config);
    if (status) {
        FUNC6("config_defaults() failed with %d\n", status);
        goto out;
    }

#ifdef __REACTOS__
    if (GetSystemDirectoryA(config_path, ARRAYSIZE(config_path)))
    {
        StringCchCatA(config_path, ARRAYSIZE(config_path), "\\drivers\\etc\\ms-nfs41-idmap.conf");
    }
    else
    {
        StringCchCopyA(config_path, ARRAYSIZE(config_path), "C:\\ReactOS\\system32\\drivers\\etc\\ms-nfs41-idmap.conf");
    }
#endif

    /* load configuration from file */
#ifdef __REACTOS__
    status = config_load(config, config_path);
#else
    status = FUNC5(config, CONFIG_FILENAME);
#endif
    if (status) {
#ifdef __REACTOS__
        eprintf("config_load('%s') failed with %d\n", config_path, status);
#else
        FUNC6("config_load('%s') failed with %d\n", CONFIG_FILENAME, status);
#endif
        goto out;
    }
out:
    return status;
}