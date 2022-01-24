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
struct stat {unsigned int const st_mode; unsigned int const st_size; unsigned int const st_atime; unsigned int const st_mtime; unsigned int const st_ctime; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC9 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC10(lua_State *L)
{
    const char *path = FUNC2(L, 1);

    struct stat statbuf;
    if (FUNC9(path, &statbuf) != 0) {
        FUNC6(L);
        FUNC7(L, "error");
        return 2;
    }

    FUNC3(L); // Result stat table

    const char * stat_names[] = {
        "mode", "size",
        "atime", "mtime", "ctime", NULL
    };
    const unsigned int stat_values[] = {
        statbuf.st_mode,
        statbuf.st_size,
        statbuf.st_atime,
        statbuf.st_mtime,
        statbuf.st_ctime
    };

    // Add all fields
    for (int i = 0; stat_names[i]; i++) {
        FUNC5(L, stat_values[i]);
        FUNC8(L, -2, stat_names[i]);
    }

    // Convenience booleans
    FUNC4(L, FUNC1(statbuf.st_mode));
    FUNC8(L, -2, "is_file");

    FUNC4(L, FUNC0(statbuf.st_mode));
    FUNC8(L, -2, "is_dir");

    // Return table
    return 1;
}