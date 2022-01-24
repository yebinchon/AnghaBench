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
struct set_name_fn {scalar_t__ email; scalar_t__ host; } ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_CHECK_FLAG_NO_WILDCARDS ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct set_name_fn const*,char*,char const*,int,char const* const) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const* const,size_t) ; 
 char** names ; 
 scalar_t__ FUNC8 (char const*,char const* const) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char) ; 
 size_t FUNC10 (char const* const) ; 

__attribute__((used)) static int FUNC11(X509 *crt, const char *nameincert,
                     const struct set_name_fn *fn)
{
    const char *const *pname = names;
    int failed = 0;

    for (; *pname != NULL; ++pname) {
        int samename = FUNC8(nameincert, *pname) == 0;
        size_t namelen = FUNC10(*pname);
        char *name = FUNC1(namelen);
        int match, ret;

        FUNC7(name, *pname, namelen);

        match = -1;
        if (!FUNC2(ret = FUNC5(crt, name, namelen, 0, NULL),
                         0)) {
            failed = 1;
        } else if (fn->host) {
            if (ret == 1 && !samename)
                match = 1;
            if (ret == 0 && samename)
                match = 0;
        } else if (ret == 1)
            match = 1;
        if (!FUNC3(FUNC6(fn, "host", nameincert, match, *pname)))
            failed = 1;

        match = -1;
        if (!FUNC2(ret = FUNC5(crt, name, namelen,
                                               X509_CHECK_FLAG_NO_WILDCARDS,
                                               NULL), 0)) {
            failed = 1;
        } else if (fn->host) {
            if (ret == 1 && !samename)
                match = 1;
            if (ret == 0 && samename)
                match = 0;
        } else if (ret == 1)
            match = 1;
        if (!FUNC3(FUNC6(fn, "host-no-wildcards",
                                     nameincert, match, *pname)))
            failed = 1;

        match = -1;
        ret = FUNC4(crt, name, namelen, 0);
        if (fn->email) {
            if (ret && !samename)
                match = 1;
            if (!ret && samename && FUNC9(nameincert, '@') != NULL)
                match = 0;
        } else if (ret)
            match = 1;
        if (!FUNC3(FUNC6(fn, "email", nameincert, match, *pname)))
            failed = 1;
        FUNC0(name);
    }

    return failed == 0;
}