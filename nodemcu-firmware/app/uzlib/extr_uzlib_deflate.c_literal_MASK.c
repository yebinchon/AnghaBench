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
struct TYPE_2__ {scalar_t__ compDisabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 TYPE_1__* oBuf ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4 (uchar c) {
  FUNC0(6);
  FUNC1("sym: %02x   %c\n", c, c);
  if (oBuf->compDisabled) {
    /* We're in an uncompressed block, so just output the byte. */
    FUNC2(c, 8);
  } else if (c <= 143) {
    /* 0 through 143 are 8 bits long starting at 00110000. */
    FUNC3(0x30 + c, 8);
  } else {
    /* 144 through 255 are 9 bits long starting at 110010000. */
    FUNC2(1, 1);
    FUNC3(0x90 - 144 + c, 8);
  }
}