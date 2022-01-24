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
typedef  scalar_t__ U32 ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static unsigned
FUNC2(const BYTE* ip, const BYTE* const iLow, U32 pattern)
{
    const BYTE* const iStart = ip;

    while (FUNC1(ip >= iLow+4)) {
        if (FUNC0(ip-4) != pattern) break;
        ip -= 4;
    }
    {   const BYTE* bytePtr = (const BYTE*)(&pattern) + 3; /* works for any endianess */
        while (FUNC1(ip>iLow)) {
            if (ip[-1] != *bytePtr) break;
            ip--; bytePtr--;
    }   }
    return (unsigned)(iStart - ip);
}