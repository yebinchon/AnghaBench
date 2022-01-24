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
typedef  int /*<<< orphan*/  SSL_CERT_LOOKUP ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int NID_undef ; 
 int /*<<< orphan*/  const* ssl_cert_info ; 
 int /*<<< orphan*/  FUNC1 (int,size_t*) ; 

const SSL_CERT_LOOKUP *FUNC2(const EVP_PKEY *pk, size_t *pidx)
{
    int nid = FUNC0(pk);
    size_t tmpidx;

    if (nid == NID_undef)
        return NULL;

    if (!FUNC1(nid, &tmpidx))
        return NULL;

    if (pidx != NULL)
        *pidx = tmpidx;

    return &ssl_cert_info[tmpidx];
}