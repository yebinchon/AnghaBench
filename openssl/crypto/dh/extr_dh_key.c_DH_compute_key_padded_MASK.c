#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  p; TYPE_1__* meth; } ;
struct TYPE_5__ {int (* compute_key ) (unsigned char*,int /*<<< orphan*/  const*,TYPE_2__*) ;} ;
typedef  TYPE_2__ DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (unsigned char*,int /*<<< orphan*/  const*,TYPE_2__*) ; 

int FUNC4(unsigned char *key, const BIGNUM *pub_key, DH *dh)
{
    int rv, pad;
    rv = dh->meth->compute_key(key, pub_key, dh);
    if (rv <= 0)
        return rv;
    pad = FUNC0(dh->p) - rv;
    if (pad > 0) {
        FUNC1(key + pad, key, rv);
        FUNC2(key, 0, pad);
    }
    return rv + pad;
}