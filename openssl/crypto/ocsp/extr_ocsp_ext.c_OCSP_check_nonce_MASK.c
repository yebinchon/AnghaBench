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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  OCSP_REQUEST ;
typedef  int /*<<< orphan*/  OCSP_BASICRESP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_id_pkix_OCSP_Nonce ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(OCSP_REQUEST *req, OCSP_BASICRESP *bs)
{
    /*
     * Since we are only interested in the presence or absence of
     * the nonce and comparing its value there is no need to use
     * the X509V3 routines: this way we can avoid them allocating an
     * ASN1_OCTET_STRING structure for the value which would be
     * freed immediately anyway.
     */

    int req_idx, resp_idx;
    X509_EXTENSION *req_ext, *resp_ext;
    req_idx = FUNC4(req, NID_id_pkix_OCSP_Nonce, -1);
    resp_idx = FUNC2(bs, NID_id_pkix_OCSP_Nonce, -1);
    /* Check both absent */
    if ((req_idx < 0) && (resp_idx < 0))
        return 2;
    /* Check in request only */
    if ((req_idx >= 0) && (resp_idx < 0))
        return -1;
    /* Check in response but not request */
    if ((req_idx < 0) && (resp_idx >= 0))
        return 3;
    /*
     * Otherwise nonce in request and response so retrieve the extensions
     */
    req_ext = FUNC3(req, req_idx);
    resp_ext = FUNC1(bs, resp_idx);
    if (FUNC0(FUNC5(req_ext),
                              FUNC5(resp_ext)))
        return 0;
    return 1;
}