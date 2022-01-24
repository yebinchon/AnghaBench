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
typedef  int /*<<< orphan*/  CONF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * save_rand_file ; 

void FUNC6(CONF *c, const char *section)
{
    const char *randfile = FUNC3(c, section, "RANDFILE");

    if (randfile == NULL) {
        FUNC1();
        return;
    }
    if (FUNC5(randfile, -1) < 0) {
        FUNC0(bio_err, "Can't load %s into RNG\n", randfile);
        FUNC2(bio_err);
    }
    if (save_rand_file == NULL)
        save_rand_file = FUNC4(randfile);
}