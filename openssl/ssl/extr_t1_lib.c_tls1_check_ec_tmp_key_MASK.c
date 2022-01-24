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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 unsigned long TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 ; 
 unsigned long TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 ; 
 int /*<<< orphan*/  TLSEXT_curve_P_256 ; 
 int /*<<< orphan*/  TLSEXT_curve_P_384 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(SSL *s, unsigned long cid)
{
    /* If not Suite B just need a shared group */
    if (!FUNC2(s))
        return FUNC1(s, 0) != 0;
    /*
     * If Suite B, AES128 MUST use P-256 and AES256 MUST use P-384, no other
     * curves permitted.
     */
    if (cid == TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256)
        return FUNC0(s, TLSEXT_curve_P_256, 1);
    if (cid == TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384)
        return FUNC0(s, TLSEXT_curve_P_384, 1);

    return 0;
}