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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC11(LPCSTR path, HCERTSTORE store,
 BOOL allow_dir)
{
    BOOL ret = FALSE;
    int fd;

    FUNC3("(%s, %p, %d)\n", FUNC6(path), store, allow_dir);

    fd = FUNC10(path, O_RDONLY);
    if (fd != -1)
    {
        struct stat st;

        if (FUNC7(fd, &st) == 0)
        {
            if (FUNC2(st.st_mode))
                ret = FUNC9(fd, store);
            else if (FUNC1(st.st_mode))
            {
                if (allow_dir)
                    ret = FUNC8(path, store);
                else
                    FUNC4("%s is a directory and directories are disallowed\n",
                     FUNC6(path));
            }
            else
                FUNC0("%s: invalid file type\n", path);
        }
        FUNC5(fd);
    }
    return ret;
}