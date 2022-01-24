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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_8__ {size_t shared_sigalgslen; TYPE_1__** shared_sigalgs; int /*<<< orphan*/  server; } ;
struct TYPE_7__ {int sigandhash; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ EVP_PKEY_EC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int NID_ecdsa_with_SHA256 ; 
 int NID_ecdsa_with_SHA384 ; 
 scalar_t__ TLSEXT_curve_P_256 ; 
 scalar_t__ TLSEXT_curve_P_384 ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(SSL *s, X509 *x, int check_ee_md)
{
    uint16_t group_id;
    EVP_PKEY *pkey;
    pkey = FUNC1(x);
    if (pkey == NULL)
        return 0;
    /* If not EC nothing to do */
    if (FUNC0(pkey) != EVP_PKEY_EC)
        return 1;
    /* Check compression */
    if (!FUNC3(s, pkey))
        return 0;
    group_id = FUNC4(pkey);
    /*
     * For a server we allow the certificate to not be in our list of supported
     * groups.
     */
    if (!FUNC2(s, group_id, !s->server))
        return 0;
    /*
     * Special case for suite B. We *MUST* sign using SHA256+P-256 or
     * SHA384+P-384.
     */
    if (check_ee_md && FUNC5(s)) {
        int check_md;
        size_t i;

        /* Check to see we have necessary signing algorithm */
        if (group_id == TLSEXT_curve_P_256)
            check_md = NID_ecdsa_with_SHA256;
        else if (group_id == TLSEXT_curve_P_384)
            check_md = NID_ecdsa_with_SHA384;
        else
            return 0;           /* Should never happen */
        for (i = 0; i < s->shared_sigalgslen; i++) {
            if (check_md == s->shared_sigalgs[i]->sigandhash)
                return 1;;
        }
        return 0;
    }
    return 1;
}