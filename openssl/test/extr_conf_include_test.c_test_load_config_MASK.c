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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC1 () ; 
 long FUNC2 (int /*<<< orphan*/ ,char*,char*,long*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC5 (long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  conf ; 
 scalar_t__ expect_failure ; 
 int /*<<< orphan*/  in ; 

__attribute__((used)) static int FUNC10(void)
{
    long errline;
    long val;
    char *str;
    long err;

    if (!FUNC6(FUNC4(conf, in, &errline), 0)
        || !FUNC5(err = FUNC1(), 0)) {
        if (expect_failure)
            return 1;
        FUNC7("Failure loading the configuration at line %ld", errline);
        return 0;
    }
    if (expect_failure) {
        FUNC7("Failure expected but did not happen");
        return 0;
    }

    if (!FUNC6(FUNC0(conf, NULL, 0), 0)) {
        FUNC7("Failed in CONF_modules_load");
        return 0;
    }

    /* verify whether RANDFILE is set correctly */
    str = FUNC3(conf, "", "RANDFILE");
    if (!FUNC8(str) || !FUNC9(str, "./.rnd")) {
        FUNC7("RANDFILE incorrect");
        return 0;
    }

    /* verify whether CA_default/default_days is set */
    val = 0;
    if (!FUNC5(FUNC2(conf, "CA_default", "default_days", &val), 1)
        || !FUNC5(val, 365)) {
        FUNC7("default_days incorrect");
        return 0;
    }

    /* verify whether req/default_bits is set */
    val = 0;
    if (!FUNC5(FUNC2(conf, "req", "default_bits", &val), 1)
        || !FUNC5(val, 2048)) {
        FUNC7("default_bits incorrect");
        return 0;
    }

    /* verify whether countryName_default is set correctly */
    str = FUNC3(conf, "req_distinguished_name", "countryName_default");
    if (!FUNC8(str) || !FUNC9(str, "AU")) {
        FUNC7("countryName_default incorrect");
        return 0;
    }

    return 1;
}