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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char const*,char*) ; 

pid_t FUNC6(const char *path) {
    pid_t pid = FUNC3(path);
    if (pid > 0) return pid;

    DIR *dir = FUNC2(path);
    if (!dir) {
        FUNC1("cannot read directory '%s'", path);
        return 0;
    }

    struct dirent *de = NULL;
    while ((de = FUNC4(dir))) {
        if (de->d_type == DT_DIR
            && (
                    (de->d_name[0] == '.' && de->d_name[1] == '\0')
                    || (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
            ))
            continue;

        if (de->d_type == DT_DIR) {
            char filename[FILENAME_MAX + 1];
            FUNC5(filename, FILENAME_MAX, "%s/%s", path, de->d_name);
            pid = FUNC6(filename);
            if(pid > 0) break;
        }
    }
    FUNC0(dir);
    return pid;
}