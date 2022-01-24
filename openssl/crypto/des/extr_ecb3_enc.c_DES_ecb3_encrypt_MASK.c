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
typedef  unsigned char* const_DES_cblock ;
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  unsigned char* DES_cblock ;
typedef  int /*<<< orphan*/  DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 

void FUNC4(const_DES_cblock *input, DES_cblock *output,
                      DES_key_schedule *ks1, DES_key_schedule *ks2,
                      DES_key_schedule *ks3, int enc)
{
    register DES_LONG l0, l1;
    DES_LONG ll[2];
    const unsigned char *in = &(*input)[0];
    unsigned char *out = &(*output)[0];

    FUNC2(in, l0);
    FUNC2(in, l1);
    ll[0] = l0;
    ll[1] = l1;
    if (enc)
        FUNC1(ll, ks1, ks2, ks3);
    else
        FUNC0(ll, ks1, ks2, ks3);
    l0 = ll[0];
    l1 = ll[1];
    FUNC3(l0, out);
    FUNC3(l1, out);
}