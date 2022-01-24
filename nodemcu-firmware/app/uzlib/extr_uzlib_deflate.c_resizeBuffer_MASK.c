#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_2__ {double inLen; double inNdx; int /*<<< orphan*/ * buffer; scalar_t__ size; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UZLIB_MEMORY_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* oBuf ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC3(void) {
  uchar *nb;
  FUNC0(2);
  /* The outbuf is given an initial size estimate but if we are running */
  /* out of space then extropolate size using current compression */
  double newEstimate = (((double) oBuf->len)*oBuf->inLen) / oBuf->inNdx;
  oBuf->size = 128 + (uint) newEstimate;
  if (!(nb = FUNC2(oBuf->buffer, oBuf->size)))
    FUNC1(UZLIB_MEMORY_ERROR);
  oBuf->buffer = nb;
}