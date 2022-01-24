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
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int MP_ICONV_ALLOW_CUTOFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,char*) ; 
 char* FUNC2 (void*,struct mp_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

const char *FUNC8(void *talloc_ctx, struct mp_log *log,  bstr buf,
                             const char *user_cp, int flags)
{
    if (FUNC5(user_cp, "enca") == 0 || FUNC5(user_cp, "guess") == 0 ||
        FUNC5(user_cp, "uchardet") == 0 || FUNC6(user_cp, ':'))
    {
        FUNC1(log, "This syntax for the --sub-codepage option was deprecated "
                    "and has been removed.\n");
        if (FUNC7(user_cp, "utf8:", 5) == 0) {
            user_cp = user_cp + 5;
        } else {
            user_cp = "";
        }
    }

    if (user_cp[0] == '+') {
        FUNC3(log, "Forcing charset '%s'.\n", user_cp + 1);
        return user_cp + 1;
    }

    const char *bom_cp = FUNC4(buf);
    if (bom_cp) {
        FUNC3(log, "Data has a BOM, assuming %s as charset.\n", bom_cp);
        return bom_cp;
    }

    int r = FUNC0(buf);
    if (r >= 0 || (r > -8 && (flags & MP_ICONV_ALLOW_CUTOFF))) {
        FUNC3(log, "Data looks like UTF-8, ignoring user-provided charset.\n");
        return "utf-8";
    }

    const char *res = NULL;
    if (FUNC5(user_cp, "auto") == 0) {
#if HAVE_UCHARDET
        res = mp_uchardet(talloc_ctx, log, buf);
#endif
        if (!res) {
            FUNC3(log, "Charset auto-detection failed.\n");
            res = "UTF-8-BROKEN";
        }
    } else {
        res = user_cp;
    }

    FUNC3(log, "Using charset '%s'.\n", res);
    return res;
}