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
struct Masscan {int dummy; } ;
typedef  int /*<<< orphan*/  line ;
typedef  scalar_t__ errno_t ;
typedef  int /*<<< orphan*/  dir ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (struct Masscan*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

void
FUNC10(struct Masscan *masscan, const char *filename)
{
    FILE *fp;
    errno_t err;
    char line[65536];

    err = FUNC2(&fp, filename, "rt");
    if (err) {
        char dir[512];
        FUNC7(filename);
        FUNC4(dir, sizeof(dir));
        FUNC3(stderr, "cwd = %s\n", dir);
        return;
    }

    while (FUNC1(line, sizeof(line), fp)) {
        char *name;
        char *value;

        FUNC9(line, sizeof(line));

        if (FUNC5(line[0] & 0xFF) || line[0] == '\0')
            continue;

        name = line;
        value = FUNC8(line, '=');
        if (value == NULL)
            continue;
        *value = '\0';
        value++;
        FUNC9(name, sizeof(line));
        FUNC9(value, sizeof(line));

        FUNC6(masscan, name, value);
    }

    FUNC0(fp);
}