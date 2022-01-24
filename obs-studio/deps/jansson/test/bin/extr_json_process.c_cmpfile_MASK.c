#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ strip; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ conf ; 
 char* dir_sep ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *str, const char *path, const char *fname)
{
    char filename[1024], *buffer;
    int ret;
    FILE *file;

    FUNC6(filename, "%s%c%s", path, dir_sep, fname);
    file = FUNC2(filename, "rb");
    if (!file) {
        if (conf.strip)
            FUNC7(filename, ".strip");
        else
            FUNC7(filename, ".normal");
        file = FUNC2(filename, "rb");
    }
    if (!file) {
        FUNC5("Error: test result file could not be opened.\n");
        FUNC0(1);
    }

    buffer = FUNC4(file);
    if (FUNC8(buffer, str) != 0)
        ret = 1;
    else
        ret = 0;
    FUNC3(buffer);
    FUNC1(file);

    return ret;
}