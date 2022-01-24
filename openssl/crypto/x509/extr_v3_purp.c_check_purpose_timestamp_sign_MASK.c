#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PURPOSE ;
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_6__ {int ex_flags; int ex_kusage; scalar_t__ ex_xkusage; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int EXFLAG_KUSAGE ; 
 int EXFLAG_XKUSAGE ; 
 int KU_DIGITAL_SIGNATURE ; 
 int KU_NON_REPUDIATION ; 
 int /*<<< orphan*/  NID_ext_key_usage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ XKU_TIMESTAMP ; 
 int FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC4(const X509_PURPOSE *xp, const X509 *x,
                                        int ca)
{
    int i_ext;

    /* If ca is true we must return if this is a valid CA certificate. */
    if (ca)
        return FUNC3(x);

    /*
     * Check the optional key usage field:
     * if Key Usage is present, it must be one of digitalSignature
     * and/or nonRepudiation (other values are not consistent and shall
     * be rejected).
     */
    if ((x->ex_flags & EXFLAG_KUSAGE)
        && ((x->ex_kusage & ~(KU_NON_REPUDIATION | KU_DIGITAL_SIGNATURE)) ||
            !(x->ex_kusage & (KU_NON_REPUDIATION | KU_DIGITAL_SIGNATURE))))
        return 0;

    /* Only time stamp key usage is permitted and it's required. */
    if (!(x->ex_flags & EXFLAG_XKUSAGE) || x->ex_xkusage != XKU_TIMESTAMP)
        return 0;

    /* Extended Key Usage MUST be critical */
    i_ext = FUNC2(x, NID_ext_key_usage, -1);
    if (i_ext >= 0) {
        X509_EXTENSION *ext = FUNC1((X509 *)x, i_ext);
        if (!FUNC0(ext))
            return 0;
    }

    return 1;
}