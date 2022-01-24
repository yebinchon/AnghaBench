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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  pcg_state_setseq_128 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline uint64_t
FUNC1(pcg_state_setseq_128 *rng,
                                       uint64_t bound) {
  uint64_t threshold = -bound % bound;
  for (;;) {
    uint64_t r = FUNC0(rng);
    if (r >= threshold)
      return r % bound;
  }
}