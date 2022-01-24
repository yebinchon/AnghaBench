#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* version; } ;
typedef  TYPE_2__ X509_REQ_INFO ;
struct TYPE_12__ {TYPE_2__ req_info; } ;
typedef  TYPE_3__ X509_REQ ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_10__ {int length; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  X509_F_X509_TO_X509_REQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 () ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509_REQ *FUNC9(X509 *x, EVP_PKEY *pkey, const EVP_MD *md)
{
    X509_REQ *ret;
    X509_REQ_INFO *ri;
    int i;
    EVP_PKEY *pktmp;

    ret = FUNC2();
    if (ret == NULL) {
        FUNC8(X509_F_X509_TO_X509_REQ, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ri = &ret->req_info;

    ri->version->length = 1;
    ri->version->data = FUNC0(1);
    if (ri->version->data == NULL)
        goto err;
    ri->version->data[0] = 0;   /* version == 0 */

    if (!FUNC4(ret, FUNC7(x)))
        goto err;

    pktmp = FUNC6(x);
    if (pktmp == NULL)
        goto err;
    i = FUNC3(ret, pktmp);
    if (!i)
        goto err;

    if (pkey != NULL) {
        if (!FUNC5(ret, pkey, md))
            goto err;
    }
    return ret;
 err:
    FUNC1(ret);
    return NULL;
}