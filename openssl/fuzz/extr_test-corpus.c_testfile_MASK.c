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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 size_t FUNC6 (unsigned char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC11(const char *pathname)
{
    struct stat st;
    FILE *f;
    unsigned char *buf;
    size_t s;

    if (FUNC10(pathname, &st) < 0 || !FUNC2(st.st_mode))
        return;
    FUNC9("# %s\n", pathname);
    FUNC4(stdout);
    f = FUNC5(pathname, "rb");
    if (f == NULL)
        return;
    buf = FUNC8(st.st_size);
    if (buf != NULL) {
        s = FUNC6(buf, 1, st.st_size, f);
        FUNC1(s == (size_t)st.st_size);
        FUNC0(buf, s);
        FUNC7(buf);
    }
    FUNC3(f);
}