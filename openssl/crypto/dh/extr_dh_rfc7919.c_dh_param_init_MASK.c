#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/  length; int /*<<< orphan*/ * g; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  _bignum_const_2 ; 

__attribute__((used)) static DH *FUNC1(const BIGNUM *p, int32_t nbits)
{
    DH *dh = FUNC0();
    if (dh == NULL)
        return NULL;
    dh->p = (BIGNUM *)p;
    dh->g = (BIGNUM *)&_bignum_const_2;
    dh->length = nbits;
    dh->dirty_cnt++;
    return dh;
}