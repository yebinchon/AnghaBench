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
 int /*<<< orphan*/  ASN1_F_DO_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int NID_undef ; 
 int FUNC1 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 scalar_t__ FUNC5 (char const) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(const char *value, const char *name)
{
    int nid;
    const char *ln, *ostr, *p;
    char *lntmp = NULL;

    p = FUNC6(value, ',');
    if (p == NULL) {
        ln = name;
        ostr = value;
    } else {
        ln = value;
        ostr = p + 1;
        if (*ostr == '\0')
            return 0;
        while (FUNC5(*ostr))
            ostr++;
        while (FUNC5(*ln))
            ln++;
        p--;
        while (FUNC5(*p)) {
            if (p == ln)
                return 0;
            p--;
        }
        p++;
        if ((lntmp = FUNC3((p - ln) + 1)) == NULL) {
            FUNC0(ASN1_F_DO_CREATE, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        FUNC4(lntmp, ln, p - ln);
        lntmp[p - ln] = '\0';
        ln = lntmp;
    }

    nid = FUNC1(ostr, name, ln);

    FUNC2(lntmp);

    return nid != NID_undef;
}