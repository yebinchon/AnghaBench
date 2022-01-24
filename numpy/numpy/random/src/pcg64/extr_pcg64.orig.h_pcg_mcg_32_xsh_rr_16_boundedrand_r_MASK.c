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
typedef  int uint16_t ;
struct pcg_state_32 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pcg_state_32*) ; 

inline uint16_t FUNC1(struct pcg_state_32 *rng,
                                                   uint16_t bound) {
  uint16_t threshold = ((uint16_t)(-bound)) % bound;
  for (;;) {
    uint16_t r = FUNC0(rng);
    if (r >= threshold)
      return r % bound;
  }
}