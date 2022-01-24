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
 scalar_t__ BIO_R_NO_SUCH_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  CONF_F_DEF_LOAD ; 
 int /*<<< orphan*/  CONF_R_NO_SUCH_FILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_SYS_LIB ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*) ; 

__attribute__((used)) static int FUNC6(CONF *conf, const char *name, long *line)
{
    int ret;
    BIO *in = NULL;

#ifdef OPENSSL_SYS_VMS
    in = BIO_new_file(name, "r");
#else
    in = FUNC1(name, "rb");
#endif
    if (in == NULL) {
        if (FUNC3(FUNC4()) == BIO_R_NO_SUCH_FILE)
            FUNC2(CONF_F_DEF_LOAD, CONF_R_NO_SUCH_FILE);
        else
            FUNC2(CONF_F_DEF_LOAD, ERR_R_SYS_LIB);
        return 0;
    }

    ret = FUNC5(conf, in, line);
    FUNC0(in);

    return ret;
}