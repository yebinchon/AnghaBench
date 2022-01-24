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
 int /*<<< orphan*/  D_CGROUP ; 
 int FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  enabled_cgroup_paths ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 size_t FUNC12 (char const*) ; 

__attribute__((used)) static inline int FUNC13(const char *base, const char *this, void (*callback)(const char *)) {
    if(!this) this = base;
    FUNC2(D_CGROUP, "searching for directories in '%s' (base '%s')", this?this:"", base);

    size_t dirlen = FUNC12(this), baselen = FUNC12(base);

    int ret = -1;
    int enabled = -1;

    const char *relative_path = &this[baselen];
    if(!*relative_path) relative_path = "/";

    DIR *dir = FUNC6(this);
    if(!dir) {
        FUNC3("CGROUP: cannot read directory '%s'", base);
        return ret;
    }
    ret = 1;

    callback(relative_path);

    struct dirent *de = NULL;
    while((de = FUNC7(dir))) {
        if(de->d_type == DT_DIR
            && (
                (de->d_name[0] == '.' && de->d_name[1] == '\0')
                || (de->d_name[0] == '.' && de->d_name[1] == '.' && de->d_name[2] == '\0')
                ))
            continue;

        if(de->d_type == DT_DIR) {
            if(enabled == -1) {
                const char *r = relative_path;
                if(*r == '\0') r = "/";

                // do not decent in directories we are not interested
                int def = FUNC8(enabled_cgroup_paths, r);

                // we check for this option here
                // so that the config will not have settings
                // for leaf directories
                char option[FILENAME_MAX + 1];
                FUNC9(option, FILENAME_MAX, "search for cgroups under %s", r);
                option[FILENAME_MAX] = '\0';
                enabled = FUNC1("plugin:cgroups", option, def);
            }

            if(enabled) {
                char *s = FUNC5(dirlen + FUNC12(de->d_name) + 2);
                FUNC11(s, this);
                FUNC10(s, "/");
                FUNC10(s, de->d_name);
                int ret2 = FUNC13(base, s, callback);
                if(ret2 > 0) ret += ret2;
                FUNC4(s);
            }
        }
    }

    FUNC0(dir);
    return ret;
}