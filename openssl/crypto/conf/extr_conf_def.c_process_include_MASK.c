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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  OPENSSL_DIR_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  CONF_F_PROCESS_INCLUDE ; 
 int /*<<< orphan*/  CONF_R_RECURSIVE_DIRECTORY_INCLUDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 

__attribute__((used)) static BIO *FUNC7(char *include, OPENSSL_DIR_CTX **dirctx,
                            char **dirpath)
{
    struct stat st;
    BIO *next;

    if (FUNC6(include, &st) < 0) {
        FUNC3(ERR_LIB_SYS, errno,
                       "calling stat(%s)",
                       include);
        /* missing include file is not fatal error */
        return NULL;
    }

    if (FUNC4(st.st_mode)) {
        if (*dirctx != NULL) {
            FUNC1(CONF_F_PROCESS_INCLUDE,
                    CONF_R_RECURSIVE_DIRECTORY_INCLUDE);
            FUNC2(1, include);
            return NULL;
        }
        /* a directory, load its contents */
        if ((next = FUNC5(include, dirctx)) != NULL)
            *dirpath = include;
        return next;
    }

    next = FUNC0(include, "r");
    return next;
}