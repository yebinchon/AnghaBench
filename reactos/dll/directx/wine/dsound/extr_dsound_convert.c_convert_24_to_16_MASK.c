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
typedef  int /*<<< orphan*/  WORD ;
typedef  int UINT ;
typedef  scalar_t__ INT ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (void const**,int,scalar_t__*,int*,int) ; 

__attribute__((used)) static void FUNC2 (const void *src, void *dst, UINT src_stride,
        UINT dst_stride, INT count, UINT freqAcc, UINT adj)
{
    while (count > 0)
    {
        WORD *dest16 = dst;
        const BYTE *source = src;
        *dest16 = FUNC0(source[2] * 256 + source[1]);

        dst = (char *)dst + dst_stride;
        FUNC1(&src, src_stride, &count, &freqAcc, adj);
    }
}