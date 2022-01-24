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
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_REG ; 
 scalar_t__ DT_UNKNOWN ; 
 int /*<<< orphan*/  D_HEALTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char const*,char const*) ; 
 size_t FUNC10 (char*) ; 

void FUNC11(const char *user_path, const char *stock_path, const char *subpath, int (*callback)(const char *filename, void *data), void *data, size_t depth) {
    if(depth > 3) {
        FUNC2("CONFIG: Max directory depth reached while reading user path '%s', stock path '%s', subpath '%s'", user_path, stock_path, subpath);
        return;
    }

    char *udir = FUNC9(user_path, subpath);
    char *sdir = FUNC9(stock_path, subpath);

    FUNC1(D_HEALTH, "CONFIG traversing user-config directory '%s', stock config directory '%s'", udir, sdir);

    DIR *dir = FUNC4(udir);
    if (!dir) {
        FUNC2("CONFIG cannot open user-config directory '%s'.", udir);
    }
    else {
        struct dirent *de = NULL;
        while((de = FUNC7(dir))) {
            if(de->d_type == DT_DIR || de->d_type == DT_LNK) {
                if( !de->d_name[0] ||
                    (de->d_name[0] == '.' && de->d_name[1] == '\0') ||
                    (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
                        ) {
                    FUNC1(D_HEALTH, "CONFIG ignoring user-config directory '%s/%s'", udir, de->d_name);
                    continue;
                }

                if(FUNC5(udir, de->d_name)) {
                    FUNC11(udir, sdir, de->d_name, callback, data, depth + 1);
                    continue;
                }
            }

            if(de->d_type == DT_UNKNOWN || de->d_type == DT_REG || de->d_type == DT_LNK) {
                size_t len = FUNC10(de->d_name);
                if(FUNC6(udir, de->d_name) &&
                   len > 5 && !FUNC8(&de->d_name[len - 5], ".conf")) {
                    char *filename = FUNC9(udir, de->d_name);
                    FUNC1(D_HEALTH, "CONFIG calling callback for user file '%s'", filename);
                    callback(filename, data);
                    FUNC3(filename);
                    continue;
                }
            }

            FUNC1(D_HEALTH, "CONFIG ignoring user-config file '%s/%s' of type %d", udir, de->d_name, (int)de->d_type);
        }

        FUNC0(dir);
    }

    FUNC1(D_HEALTH, "CONFIG traversing stock config directory '%s', user config directory '%s'", sdir, udir);

    dir = FUNC4(sdir);
    if (!dir) {
        FUNC2("CONFIG cannot open stock config directory '%s'.", sdir);
    }
    else {
        struct dirent *de = NULL;
        while((de = FUNC7(dir))) {
            if(de->d_type == DT_DIR || de->d_type == DT_LNK) {
                if( !de->d_name[0] ||
                    (de->d_name[0] == '.' && de->d_name[1] == '\0') ||
                    (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
                        ) {
                    FUNC1(D_HEALTH, "CONFIG ignoring stock config directory '%s/%s'", sdir, de->d_name);
                    continue;
                }

                if(FUNC5(sdir, de->d_name)) {
                    // we recurse in stock subdirectory, only when there is no corresponding
                    // user subdirectory - to avoid reading the files twice

                    if(!FUNC5(udir, de->d_name))
                        FUNC11(udir, sdir, de->d_name, callback, data, depth + 1);

                    continue;
                }
            }

            if(de->d_type == DT_UNKNOWN || de->d_type == DT_REG || de->d_type == DT_LNK) {
                size_t len = FUNC10(de->d_name);
                if(FUNC6(sdir, de->d_name) && !FUNC6(udir, de->d_name) &&
                   len > 5 && !FUNC8(&de->d_name[len - 5], ".conf")) {
                    char *filename = FUNC9(sdir, de->d_name);
                    FUNC1(D_HEALTH, "CONFIG calling callback for stock file '%s'", filename);
                    callback(filename, data);
                    FUNC3(filename);
                    continue;
                }

            }

            FUNC1(D_HEALTH, "CONFIG ignoring stock-config file '%s/%s' of type %d", udir, de->d_name, (int)de->d_type);
        }

        FUNC0(dir);
    }

    FUNC1(D_HEALTH, "CONFIG done traversing user-config directory '%s', stock config directory '%s'", udir, sdir);

    FUNC3(udir);
    FUNC3(sdir);
}