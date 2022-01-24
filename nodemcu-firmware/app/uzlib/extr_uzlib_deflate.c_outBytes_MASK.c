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
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_2__ {int len; int size; int /*<<< orphan*/ * buffer; scalar_t__ bits; scalar_t__ nBits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* oBuf ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void *bytes, int nBytes) {
  FUNC0(5);
  int i;
  if (oBuf->len >= oBuf->size - nBytes)
    FUNC2();

  /* Note that byte output dumps any bits data so the caller must */
  /* flush this first, if necessary */
  oBuf->nBits = oBuf->bits  = 0;
  for (i = 0; i < nBytes; i++) {
    FUNC1("%02x-", *((uchar*)bytes+i));
    oBuf->buffer[oBuf->len++] = *((uchar*)bytes+i);
  }
}