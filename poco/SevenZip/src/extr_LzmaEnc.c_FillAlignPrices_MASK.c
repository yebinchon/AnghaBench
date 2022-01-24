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
typedef  size_t UInt32 ;
struct TYPE_3__ {scalar_t__ alignPriceCount; int /*<<< orphan*/  ProbPrices; int /*<<< orphan*/  posAlignEncoder; int /*<<< orphan*/ * alignPrices; } ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 size_t kAlignTableSize ; 
 int /*<<< orphan*/  kNumAlignBits ; 

__attribute__((used)) static void FUNC1(CLzmaEnc *p)
{
  UInt32 i;
  for (i = 0; i < kAlignTableSize; i++)
    p->alignPrices[i] = FUNC0(p->posAlignEncoder, kNumAlignBits, i, p->ProbPrices);
  p->alignPriceCount = 0;
}