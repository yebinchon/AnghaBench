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
typedef  int npy_uint64 ;
typedef  scalar_t__ npy_uint32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static npy_uint32
FUNC1(npy_uint64 val)
{
    npy_uint64 temp;

    temp = val >> 32;
    if (temp) {
        return 32 + FUNC0((npy_uint32)temp);
    }

    return FUNC0((npy_uint32)val);
}