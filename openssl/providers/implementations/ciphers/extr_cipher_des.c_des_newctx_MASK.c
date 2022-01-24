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
typedef  void PROV_DES_CTX ;
typedef  int /*<<< orphan*/  PROV_CIPHER_HW ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t,size_t,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*) ; 

__attribute__((used)) static void *FUNC2(void *provctx, size_t kbits, size_t blkbits,
                        size_t ivbits, unsigned int mode, uint64_t flags,
                        const PROV_CIPHER_HW *hw)
{
    PROV_DES_CTX *ctx = FUNC0(sizeof(*ctx));

    if (ctx != NULL)
        FUNC1(ctx, kbits, blkbits, ivbits, mode, flags, hw,
                               provctx);
    return ctx;
}