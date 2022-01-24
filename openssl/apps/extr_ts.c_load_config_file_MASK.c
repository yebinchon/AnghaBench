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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  ENV_OID_FILE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static CONF *FUNC9(const char *configfile)
{
    CONF *conf = FUNC8(configfile);

    if (conf != NULL) {
        const char *p;

        FUNC2(bio_err, "Using configuration from %s\n", configfile);
        p = FUNC5(conf, NULL, ENV_OID_FILE);
        if (p != NULL) {
            BIO *oid_bio = FUNC1(p, "r");
            if (!oid_bio)
                FUNC4(bio_err);
            else {
                FUNC6(oid_bio);
                FUNC0(oid_bio);
            }
        } else
            FUNC3();
        if (!FUNC7(conf))
            FUNC4(bio_err);
    }
    return conf;
}