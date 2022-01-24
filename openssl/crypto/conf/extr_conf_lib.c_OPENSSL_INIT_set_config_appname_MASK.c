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
struct TYPE_3__ {char* appname; } ;
typedef  TYPE_1__ OPENSSL_INIT_SETTINGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 

int FUNC2(OPENSSL_INIT_SETTINGS *settings,
                                    const char *appname)
{
    char *newappname = NULL;

    if (appname != NULL) {
        newappname = FUNC1(appname);
        if (newappname == NULL)
            return 0;
    }

    FUNC0(settings->appname);
    settings->appname = newappname;

    return 1;
}