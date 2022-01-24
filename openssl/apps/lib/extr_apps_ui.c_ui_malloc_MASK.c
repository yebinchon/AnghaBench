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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void *FUNC4(int sz, const char *what)
{
    void *vp = FUNC2(sz);

    if (vp == NULL) {
        FUNC0(bio_err, "Could not allocate %d bytes for %s\n", sz, what);
        FUNC1(bio_err);
        FUNC3(1);
    }
    return vp;
}