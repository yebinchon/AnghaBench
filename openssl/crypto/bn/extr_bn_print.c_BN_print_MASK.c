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
struct TYPE_4__ {int top; int* d; scalar_t__ neg; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int BN_BITS2 ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 char* Hex ; 

int FUNC2(BIO *bp, const BIGNUM *a)
{
    int i, j, v, z = 0;
    int ret = 0;

    if ((a->neg) && FUNC0(bp, "-", 1) != 1)
        goto end;
    if (FUNC1(a) && FUNC0(bp, "0", 1) != 1)
        goto end;
    for (i = a->top - 1; i >= 0; i--) {
        for (j = BN_BITS2 - 4; j >= 0; j -= 4) {
            /* strip leading zeros */
            v = (int)((a->d[i] >> j) & 0x0f);
            if (z || v != 0) {
                if (FUNC0(bp, &Hex[v], 1) != 1)
                    goto end;
                z = 1;
            }
        }
    }
    ret = 1;
 end:
    return ret;
}