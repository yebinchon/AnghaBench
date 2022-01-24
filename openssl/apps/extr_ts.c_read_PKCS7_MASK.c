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
typedef  int /*<<< orphan*/  TS_TST_INFO ;
typedef  int /*<<< orphan*/  TS_STATUS_INFO ;
typedef  int /*<<< orphan*/  TS_RESP ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TS_STATUS_GRANTED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static TS_RESP *FUNC11(BIO *in_bio)
{
    int ret = 0;
    PKCS7 *token = NULL;
    TS_TST_INFO *tst_info = NULL;
    TS_RESP *resp = NULL;
    TS_STATUS_INFO *si = NULL;

    if ((token = FUNC10(in_bio, NULL)) == NULL)
        goto end;
    if ((tst_info = FUNC1(token)) == NULL)
        goto end;
    if ((resp = FUNC3()) == NULL)
        goto end;
    if ((si = FUNC7()) == NULL)
        goto end;
    if (!FUNC8(si, TS_STATUS_GRANTED))
        goto end;
    if (!FUNC4(resp, si))
        goto end;
    FUNC5(resp, token, tst_info);
    token = NULL;               /* Ownership is lost. */
    tst_info = NULL;            /* Ownership is lost. */
    ret = 1;

 end:
    FUNC0(token);
    FUNC9(tst_info);
    if (!ret) {
        FUNC2(resp);
        resp = NULL;
    }
    FUNC6(si);
    return resp;
}