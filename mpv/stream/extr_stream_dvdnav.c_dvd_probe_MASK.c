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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *path, const char *ext, const char *sig)
{
    if (!FUNC2(FUNC1(path), FUNC1(ext)))
        return false;

    FILE *temp = FUNC4(path, "rb");
    if (!temp)
        return false;

    bool r = false;

    char data[50];

    FUNC0(FUNC7(sig) <= sizeof(data));

    if (FUNC5(data, 50, 1, temp) == 1) {
        if (FUNC6(data, sig, FUNC7(sig)) == 0)
            r = true;
    }

    FUNC3(temp);
    return r;
}