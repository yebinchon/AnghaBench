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
typedef  unsigned int uint64_t ;
typedef  unsigned int uint32_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 

inline uint64_t FUNC1(uint64_t state) {
  uint32_t rot1 = (uint32_t)(state >> 59u);
  uint32_t high = (uint32_t)(state >> 32u);
  uint32_t low = (uint32_t)state;
  uint32_t xored = high ^ low;
  uint32_t newlow = FUNC0(xored, rot1);
  uint32_t newhigh = FUNC0(high, newlow & 31u);
  return (((uint64_t)newhigh) << 32u) | newlow;
}