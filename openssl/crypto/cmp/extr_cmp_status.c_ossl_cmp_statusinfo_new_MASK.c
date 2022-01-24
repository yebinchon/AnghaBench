#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * failInfo; int /*<<< orphan*/ * statusString; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ OSSL_CMP_PKISI ;
typedef  int /*<<< orphan*/  ASN1_UTF8STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int OSSL_CMP_PKIFAILUREINFO_MAX ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

OSSL_CMP_PKISI *FUNC10(int status, int fail_info,
                                        const char *text)
{
    OSSL_CMP_PKISI *si = FUNC7();
    ASN1_UTF8STRING *utf8_text = NULL;
    int failure;

    if (si == NULL)
        goto err;
    if (!FUNC2(si->status, status))
        goto err;

    if (text != NULL) {
        if ((utf8_text = FUNC5()) == NULL
                || !FUNC3(utf8_text, text, -1))
            goto err;
        if ((si->statusString = FUNC8()) == NULL)
            goto err;
        if (!FUNC9(si->statusString, utf8_text))
            goto err;
        /* Ownership is lost. */
        utf8_text = NULL;
    }

    for (failure = 0; failure <= OSSL_CMP_PKIFAILUREINFO_MAX; failure++) {
        if ((fail_info & (1 << failure)) != 0) {
            if (si->failInfo == NULL
                    && (si->failInfo = FUNC0()) == NULL)
                goto err;
            if (!FUNC1(si->failInfo, failure, 1))
                goto err;
        }
    }
    return si;

 err:
    FUNC6(si);
    FUNC4(utf8_text);
    return NULL;
}