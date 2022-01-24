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
typedef  int uchar ;
struct TYPE_2__ {int* bitrevNibble; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* dynamicTables ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2(uchar bits, int nBits) {
  FUNC0(4);
  /* Note that bit reversal only operates on an 8-bit bits field */
  uchar bitsRev = (dynamicTables->bitrevNibble[bits & 0x0f]<<4) |
                  dynamicTables->bitrevNibble[bits>>4];
  FUNC1(bitsRev, nBits);
}