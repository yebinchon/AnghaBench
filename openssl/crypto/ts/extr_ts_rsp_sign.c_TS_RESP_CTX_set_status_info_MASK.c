#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  response; } ;
struct TYPE_7__ {int /*<<< orphan*/ * text; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ TS_STATUS_INFO ;
typedef  TYPE_2__ TS_RESP_CTX ;
typedef  int /*<<< orphan*/  ASN1_UTF8STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CTX_SET_STATUS_INFO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

int FUNC11(TS_RESP_CTX *ctx,
                                int status, const char *text)
{
    TS_STATUS_INFO *si = NULL;
    ASN1_UTF8STRING *utf8_text = NULL;
    int ret = 0;

    if ((si = FUNC6()) == NULL)
        goto err;
    if (!FUNC0(si->status, status))
        goto err;
    if (text) {
        if ((utf8_text = FUNC3()) == NULL
            || !FUNC1(utf8_text, text, FUNC10(text)))
            goto err;
        if (si->text == NULL
            && (si->text = FUNC8()) == NULL)
            goto err;
        if (!FUNC9(si->text, utf8_text))
            goto err;
        utf8_text = NULL;       /* Ownership is lost. */
    }
    if (!FUNC4(ctx->response, si))
        goto err;
    ret = 1;
 err:
    if (!ret)
        FUNC7(TS_F_TS_RESP_CTX_SET_STATUS_INFO, ERR_R_MALLOC_FAILURE);
    FUNC5(si);
    FUNC2(utf8_text);
    return ret;
}