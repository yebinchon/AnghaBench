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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 int FUNC0 () ; 

int FUNC1(int l, int u) {
  // The range is the number of different values to return
  unsigned int range = u + 1 - l;

  // If this is very large then use simpler code
  if (range >= 0x7fffffff) {
    unsigned int v;

    // This cannot loop more than half the time
    while ((v = FUNC0()) >= range) {
    }

    // Now v is in the range [0, range)
    return v + l;
  }

  // Easy case, with only one value, we know the result
  if (range == 1) {
    return l;
  }

  // Another easy case -- uniform 32-bit
  if (range == 0) {
    return FUNC0();
  }

  // Now we have to figure out what a large multiple of range is
  // that just fits into 32 bits.
  // The limit will be less than 1 << 32 by some amount (not much)
  uint32_t limit = ((0x80000000 / ((range + 1) >> 1)) - 1) * range;

  uint32_t v;

  while ((v = FUNC0()) >= limit) {
  }

  // Now v is uniformly distributed in [0, limit) and limit is a multiple of range

  return (v % range) + l;
}