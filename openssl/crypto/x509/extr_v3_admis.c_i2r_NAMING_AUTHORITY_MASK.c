#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v3_ext_method {int dummy; } ;
typedef  int /*<<< orphan*/  objbuf ;
struct TYPE_2__ {int /*<<< orphan*/ * namingAuthorityUrl; int /*<<< orphan*/ * namingAuthorityText; int /*<<< orphan*/ * namingAuthorityId; } ;
typedef  TYPE_1__ NAMING_AUTHORITY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(const struct v3_ext_method *method, void *in,
                                BIO *bp, int ind)
{
    NAMING_AUTHORITY * namingAuthority = (NAMING_AUTHORITY*) in;

    if (namingAuthority == NULL)
        return 0;

    if (namingAuthority->namingAuthorityId == NULL
        && namingAuthority->namingAuthorityText == NULL
        && namingAuthority->namingAuthorityUrl == NULL)
        return 0;

    if (FUNC1(bp, "%*snamingAuthority: ", ind, "") <= 0)
        goto err;

    if (namingAuthority->namingAuthorityId != NULL) {
        char objbuf[128];
        const char *ln = FUNC2(FUNC3(namingAuthority->namingAuthorityId));

        if (FUNC1(bp, "%*s  admissionAuthorityId: ", ind, "") <= 0)
            goto err;

        FUNC4(objbuf, sizeof(objbuf), namingAuthority->namingAuthorityId, 1);

        if (FUNC1(bp, "%s%s%s%s\n", ln ? ln : "",
                       ln ? " (" : "", objbuf, ln ? ")" : "") <= 0)
            goto err;
    }
    if (namingAuthority->namingAuthorityText != NULL) {
        if (FUNC1(bp, "%*s  namingAuthorityText: ", ind, "") <= 0
            || FUNC0(bp, namingAuthority->namingAuthorityText) <= 0
            || FUNC1(bp, "\n") <= 0)
            goto err;
    }
    if (namingAuthority->namingAuthorityUrl != NULL ) {
        if (FUNC1(bp, "%*s  namingAuthorityUrl: ", ind, "") <= 0
            || FUNC0(bp, namingAuthority->namingAuthorityUrl) <= 0
            || FUNC1(bp, "\n") <= 0)
            goto err;
    }
    return 1;

err:
    return 0;
}