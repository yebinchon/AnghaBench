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
struct dirent {char* d_name; } ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DIR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (char**,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,char*,char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 size_t FUNC12 (char*) ; 

__attribute__((used)) static BOOL FUNC13(LPCSTR path, HCERTSTORE store)
{
#ifdef HAVE_READDIR
    BOOL ret = FALSE;
    DIR *dir;

    TRACE("(%s, %p)\n", debugstr_a(path), store);

    dir = opendir(path);
    if (dir)
    {
        size_t path_len = strlen(path), bufsize = 0;
        char *filebuf = NULL;

        struct dirent *entry;
        while ((entry = readdir(dir)))
        {
            if (strcmp(entry->d_name, ".") && strcmp(entry->d_name, ".."))
            {
                size_t name_len = strlen(entry->d_name);

                if (!check_buffer_resize(&filebuf, &bufsize, path_len + 1 + name_len + 1))
                {
                    ERR("Path buffer (re)allocation failed with out of memory condition\n");
                    break;
                }
                snprintf(filebuf, bufsize, "%s/%s", path, entry->d_name);
                if (import_certs_from_path(filebuf, store, FALSE) && !ret)
                    ret = TRUE;
            }
        }
        CryptMemFree(filebuf);
        closedir(dir);
    }
    return ret;
#else
    FUNC2("not implemented without readdir available\n");
    return FALSE;
#endif
}