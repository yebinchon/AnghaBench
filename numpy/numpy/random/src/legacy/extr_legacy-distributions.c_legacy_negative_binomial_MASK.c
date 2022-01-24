#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  bit_generator; } ;
typedef  TYPE_1__ aug_bitgen_t ;

/* Variables and functions */
 double FUNC0 (TYPE_1__*,double,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double) ; 

int64_t FUNC2(aug_bitgen_t *aug_state, double n, double p) {
  double Y = FUNC0(aug_state, n, (1 - p) / p);
  return (int64_t)FUNC1(aug_state->bit_generator, Y);
}