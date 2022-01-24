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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,char const**) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 struct dirent* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* FUNC14 (char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(lua_State *L)
{
    //                    0      1        2       3
    const char *fmts[] = {"all", "files", "dirs", "normal", NULL};
    const char *path = FUNC4(L, 1);
    int t = FUNC3(L, 2, "normal", fmts);
    DIR *dir = FUNC10(path);
    if (!dir) {
        FUNC7(L);
        FUNC8(L, "error");
        return 2;
    }
    FUNC5(L); // list
    char *fullpath = NULL;
    struct dirent *e;
    int n = 0;
    while ((e = FUNC11(dir))) {
        char *name = e->d_name;
        if (t) {
            if (FUNC13(name, ".") == 0 || FUNC13(name, "..") == 0)
                continue;
            if (fullpath)
                fullpath[0] = '\0';
            fullpath = FUNC14(fullpath, "%s/%s", path, name);
            struct stat st;
            if (FUNC12(fullpath, &st))
                continue;
            if (!(((t & 1) && FUNC1(st.st_mode)) ||
                  ((t & 2) && FUNC0(st.st_mode))))
                continue;
        }
        FUNC6(L, ++n); // list index
        FUNC8(L, name); // list index name
        FUNC9(L, -3); // list
    }
    FUNC2(dir);
    FUNC15(fullpath);
    return 1;
}