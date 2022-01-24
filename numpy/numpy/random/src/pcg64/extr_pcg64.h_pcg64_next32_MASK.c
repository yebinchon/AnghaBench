#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int has_uint32; scalar_t__ uinteger; int /*<<< orphan*/  pcg_state; } ;
typedef  TYPE_1__ pcg64_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t FUNC1(pcg64_state *state) {
  uint64_t next;
  if (state->has_uint32) {
    state->has_uint32 = 0;
    return state->uinteger;
  }
  next = FUNC0(state->pcg_state);
  state->has_uint32 = 1;
  state->uinteger = (uint32_t)(next >> 32);
  return (uint32_t)(next & 0xffffffff);
}