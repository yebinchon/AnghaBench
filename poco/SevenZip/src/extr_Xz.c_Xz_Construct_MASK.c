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
struct TYPE_3__ {scalar_t__ flags; scalar_t__ blocks; scalar_t__ numBlocksAllocated; scalar_t__ numBlocks; } ;
typedef  TYPE_1__ CXzStream ;

/* Variables and functions */

void FUNC0(CXzStream *p)
{
  p->numBlocks = p->numBlocksAllocated = 0;
  p->blocks = 0;
  p->flags = 0;
}