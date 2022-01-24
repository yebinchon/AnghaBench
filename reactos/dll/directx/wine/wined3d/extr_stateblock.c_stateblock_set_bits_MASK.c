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
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int,int) ; 

__attribute__((used)) static inline void FUNC1(DWORD *map, UINT map_size)
{
    DWORD mask = (1u << (map_size & 0x1f)) - 1;
    FUNC0(map, 0xff, (map_size >> 5) * sizeof(*map));
    if (mask) map[map_size >> 5] = mask;
}