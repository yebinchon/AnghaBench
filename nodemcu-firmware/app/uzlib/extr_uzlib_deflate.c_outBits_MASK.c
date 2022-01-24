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
typedef  int ushort ;
typedef  int /*<<< orphan*/  bits ;
struct TYPE_2__ {int bits; int nBits; int len; int size; int* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* oBuf ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(ushort bits, int nBits) {
  FUNC0(3);
  oBuf->bits  |= bits << oBuf->nBits;
  oBuf->nBits += nBits;

  if (oBuf->len >= oBuf->size - sizeof(bits))
    FUNC2();

  while (oBuf->nBits >= 8) {
    FUNC1("%02x-", oBuf->bits & 0xFF);
    oBuf->buffer[oBuf->len++] = oBuf->bits & 0xFF;
    oBuf->bits >>= 8;
    oBuf->nBits -= 8;
  }
}