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
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

json_t *FUNC6(const char *path, size_t flags, json_error_t *error)
{
    json_t *result;
    FILE *fp;

    FUNC4(error, path);

    if (path == NULL) {
        FUNC0(error, NULL, "wrong arguments");
        return NULL;
    }

    fp = FUNC2(path, "rb");
    if(!fp)
    {
        FUNC0(error, NULL, "unable to open %s: %s",
                  path, FUNC5(errno));
        return NULL;
    }

    result = FUNC3(fp, flags, error);

    FUNC1(fp);
    return result;
}