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
typedef  int UINT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const**,int,scalar_t__*,int*,int) ; 

__attribute__((used)) static void FUNC1 (const void *src, void *dst, UINT src_stride,
        UINT dst_stride, INT count, UINT freqAcc, UINT adj)
{
    while (count > 0)
    {
        DWORD *dest = dst;
        *dest = *(const DWORD *)src;

        dst = (char *)dst + dst_stride;
        FUNC0(&src, src_stride, &count, &freqAcc, adj);
    }
}