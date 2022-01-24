#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * pctx; } ;
struct TYPE_5__ {TYPE_3__* kari; } ;
struct TYPE_6__ {TYPE_1__ d; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ CMS_RecipientInfo ;
typedef  TYPE_3__ CMS_KeyAgreeRecipientInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(CMS_RecipientInfo *ri, EVP_PKEY *pk)
{
    EVP_PKEY_CTX *pctx;
    CMS_KeyAgreeRecipientInfo *kari = ri->d.kari;

    FUNC0(kari->pctx);
    kari->pctx = NULL;
    if (pk == NULL)
        return 1;
    pctx = FUNC1(pk, NULL);
    if (pctx == NULL || FUNC2(pctx) <= 0)
        goto err;
    kari->pctx = pctx;
    return 1;
 err:
    FUNC0(pctx);
    return 0;
}