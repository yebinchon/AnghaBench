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
struct pcg_state_setseq_128 {int dummy; } ;
typedef  int pcg128_t ;

/* Variables and functions */
 int FUNC0 (struct pcg_state_setseq_128*) ; 

inline pcg128_t
FUNC1(struct pcg_state_setseq_128 *rng,
                                           pcg128_t bound) {
  pcg128_t threshold = -bound % bound;
  for (;;) {
    pcg128_t r = FUNC0(rng);
    if (r >= threshold)
      return r % bound;
  }
}