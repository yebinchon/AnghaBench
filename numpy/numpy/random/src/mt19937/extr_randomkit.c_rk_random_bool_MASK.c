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
typedef  int /*<<< orphan*/  rk_state ;
typedef  int npy_uint32 ;
typedef  size_t npy_intp ;
typedef  int npy_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(npy_bool off, npy_bool rng, npy_intp cnt, npy_bool *out,
                    rk_state *state) {
  npy_intp i;
  npy_uint32 buf;
  int bcnt = 0;

  if (rng == 0) {
    for (i = 0; i < cnt; i++) {
      out[i] = off;
    }
    return;
  }

  /* If we reach here rng and mask are one and off is zero */
  FUNC0(rng == 1 && off == 0);
  for (i = 0; i < cnt; i++) {
    if (!bcnt) {
      buf = FUNC1(state);
      bcnt = 31;
    } else {
      buf >>= 1;
      bcnt--;
    }
    out[i] = (buf & 0x00000001) != 0;
  }
}