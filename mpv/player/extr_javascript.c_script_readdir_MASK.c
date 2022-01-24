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
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,char const**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 struct dirent* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 char* FUNC16 (char*,char*,char const*,char*) ; 
 char* FUNC17 (void*,char*) ; 

__attribute__((used)) static void FUNC18(js_State *J, void *af)
{
    //                    0      1        2       3
    const char *filters[] = {"all", "files", "dirs", "normal", NULL};
    const char *path = FUNC5(J, 1) ? "." : FUNC9(J, 1);
    int t = FUNC3(J, 2, "normal", filters, "listing filter");

    DIR *dir = FUNC10(path);
    if (!dir) {
        FUNC11(J, "Cannot open dir");
        return;
    }
    FUNC2(af, dir);
    FUNC13(FUNC4(J), 0, NULL);
    FUNC6(J);  // the return value
    char *fullpath = FUNC17(af, "");
    struct dirent *e;
    int n = 0;
    while ((e = FUNC12(dir))) {
        char *name = e->d_name;
        if (t) {
            if (FUNC15(name, ".") == 0 || FUNC15(name, "..") == 0)
                continue;
            if (fullpath)
                fullpath[0] = '\0';
            fullpath = FUNC16(fullpath, "%s/%s", path, name);
            struct stat st;
            if (FUNC14(fullpath, &st))
                continue;
            if (!(((t & 1) && FUNC1(st.st_mode)) ||
                  ((t & 2) && FUNC0(st.st_mode))))
            {
                continue;
            }
        }
        FUNC7(J, name);
        FUNC8(J, -2, n++);
    }
}