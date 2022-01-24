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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void PROV_TDES_CTX ;
typedef  int /*<<< orphan*/  PROV_CIPHER_HW ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*) ; 

void *FUNC2(void *provctx, int mode, size_t kbits, size_t blkbits,
                  size_t ivbits, uint64_t flags, const PROV_CIPHER_HW *hw)
{
    PROV_TDES_CTX *tctx = FUNC0(sizeof(*tctx));

    if (tctx != NULL)
        FUNC1(tctx, kbits, blkbits, ivbits, mode, flags, hw,
                               provctx);
    return tctx;
}