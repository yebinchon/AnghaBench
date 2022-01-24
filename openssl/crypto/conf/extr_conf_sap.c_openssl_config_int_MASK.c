#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* filename; char* appname; unsigned long flags; } ;
typedef  TYPE_1__ OPENSSL_INIT_SETTINGS ;

/* Variables and functions */
 int FUNC0 (char const*,char const*,unsigned long) ; 
 unsigned long DEFAULT_CONF_MFLAGS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*,unsigned long) ; 
 int openssl_configured ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(const OPENSSL_INIT_SETTINGS *settings)
{
    int ret = 0;
    const char *filename;
    const char *appname;
    unsigned long flags;

    if (openssl_configured)
        return 1;

    filename = settings ? settings->filename : NULL;
    appname = settings ? settings->appname : NULL;
    flags = settings ? settings->flags : DEFAULT_CONF_MFLAGS;

#ifdef OPENSSL_INIT_DEBUG
    fprintf(stderr, "OPENSSL_INIT: openssl_config_int(%s, %s, %lu)\n",
            filename, appname, flags);
#endif

    FUNC3();
#ifndef OPENSSL_NO_ENGINE
    /* Need to load ENGINEs */
    FUNC1();
#endif
    FUNC2();
#ifndef OPENSSL_SYS_UEFI
    ret = FUNC0(filename, appname, flags);
#endif
    openssl_configured = 1;
    return ret;
}