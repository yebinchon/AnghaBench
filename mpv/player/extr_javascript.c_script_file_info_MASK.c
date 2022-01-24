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
struct stat {double const st_mode; double const st_size; double const st_atime; double const st_mtime; double const st_ctime; } ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double const) ; 
 int /*<<< orphan*/  FUNC1 (double const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,double const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,struct stat*) ; 

__attribute__((used)) static void FUNC10(js_State *J)
{
    const char *path = FUNC5(J, 1);

    struct stat statbuf;
    if (FUNC9(path, &statbuf) != 0) {
        FUNC6(J, "Cannot stat path");
        return;
    }
    // Clear last error
    FUNC8(FUNC2(J), 0, NULL);

    const char * stat_names[] = {
        "mode", "size",
        "atime", "mtime", "ctime", NULL
    };
    const double stat_values[] = {
        statbuf.st_mode,
        statbuf.st_size,
        statbuf.st_atime,
        statbuf.st_mtime,
        statbuf.st_ctime
    };
    // Create an object and add all fields
    FUNC7(J, stat_names, stat_values);

    // Convenience booleans
    FUNC3(J, FUNC1(statbuf.st_mode));
    FUNC4(J, -2, "is_file");

    FUNC3(J, FUNC0(statbuf.st_mode));
    FUNC4(J, -2, "is_dir");
}