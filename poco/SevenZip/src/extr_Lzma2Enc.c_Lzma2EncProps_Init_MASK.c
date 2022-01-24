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
struct TYPE_3__ {int numTotalThreads; int numBlockThreads; scalar_t__ blockSize; int /*<<< orphan*/  lzmaProps; } ;
typedef  TYPE_1__ CLzma2EncProps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(CLzma2EncProps *p)
{
  FUNC0(&p->lzmaProps);
  p->numTotalThreads = -1;
  p->numBlockThreads = -1;
  p->blockSize = 0;
}