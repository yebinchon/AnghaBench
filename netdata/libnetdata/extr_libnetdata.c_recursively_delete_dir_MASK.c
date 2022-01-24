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
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,char const*,char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (char*) ; 

int FUNC9(const char *path, const char *reason) {
    DIR *dir = FUNC3(path);
    if(!dir) {
        FUNC1("Cannot read %s directory to be deleted '%s'", reason?reason:"", path);
        return -1;
    }

    int ret = 0;
    struct dirent *de = NULL;
    while((de = FUNC4(dir))) {
        if(de->d_type == DT_DIR
           && (
                   (de->d_name[0] == '.' && de->d_name[1] == '\0')
                   || (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
           ))
            continue;

        char fullpath[FILENAME_MAX + 1];
        FUNC6(fullpath, FILENAME_MAX, "%s/%s", path, de->d_name);

        if(de->d_type == DT_DIR) {
            int r = FUNC9(fullpath, reason);
            if(r > 0) ret += r;
            continue;
        }

        FUNC2("Deleting %s file '%s'", reason?reason:"", fullpath);
        if(FUNC7(FUNC8(fullpath) == -1))
            FUNC1("Cannot delete %s file '%s'", reason?reason:"", fullpath);
        else
            ret++;
    }

    FUNC2("Deleting empty directory '%s'", path);
    if(FUNC7(FUNC5(path) == -1))
        FUNC1("Cannot delete empty directory '%s'", path);
    else
        ret++;

    FUNC0(dir);

    return ret;
}