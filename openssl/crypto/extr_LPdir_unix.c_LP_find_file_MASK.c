#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dirent {int /*<<< orphan*/  d_name; } ;
struct TYPE_6__ {int expect_file_generations; char const* entry_name; int /*<<< orphan*/  previous_entry_name; int /*<<< orphan*/ * dir; } ;
typedef  TYPE_1__ LP_DIR_CTX ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 

const char *FUNC10(LP_DIR_CTX **ctx, const char *directory)
{
    struct dirent *direntry = NULL;

    if (ctx == NULL || directory == NULL) {
        errno = EINVAL;
        return 0;
    }

    errno = 0;
    if (*ctx == NULL) {
        *ctx = FUNC3(sizeof(**ctx));
        if (*ctx == NULL) {
            errno = ENOMEM;
            return 0;
        }
        FUNC4(*ctx, 0, sizeof(**ctx));

#ifdef __VMS
        {
            char c = directory[strlen(directory) - 1];

            if (c == ']' || c == '>' || c == ':')
                (*ctx)->expect_file_generations = 1;
        }
#endif

        (*ctx)->dir = FUNC5(directory);
        if ((*ctx)->dir == NULL) {
            int save_errno = errno; /* Probably not needed, but I'm paranoid */
            FUNC1(*ctx);
            *ctx = NULL;
            errno = save_errno;
            return 0;
        }
    }

#ifdef __VMS
    strncpy((*ctx)->previous_entry_name, (*ctx)->entry_name,
            sizeof((*ctx)->previous_entry_name));

 again:
#endif

    direntry = FUNC6((*ctx)->dir);
    if (direntry == NULL) {
        return 0;
    }

    FUNC0((*ctx)->entry_name, direntry->d_name,
                    sizeof((*ctx)->entry_name));
#ifdef __VMS
    if ((*ctx)->expect_file_generations) {
        char *p = (*ctx)->entry_name + strlen((*ctx)->entry_name);

        while(p > (*ctx)->entry_name && isdigit(p[-1]))
            p--;
        if (p > (*ctx)->entry_name && p[-1] == ';')
            p[-1] = '\0';
        if (strcasecmp((*ctx)->entry_name, (*ctx)->previous_entry_name) == 0)
            goto again;
    }
#endif
    return (*ctx)->entry_name;
}