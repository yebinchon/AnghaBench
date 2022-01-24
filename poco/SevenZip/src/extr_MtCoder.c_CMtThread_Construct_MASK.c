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
struct TYPE_3__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  canWrite; int /*<<< orphan*/  canRead; scalar_t__ inBuf; scalar_t__ outBuf; int /*<<< orphan*/ * mtCoder; } ;
typedef  TYPE_1__ CMtThread ;
typedef  int /*<<< orphan*/  CMtCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(CMtThread *p, CMtCoder *mtCoder)
{
  p->mtCoder = mtCoder;
  p->outBuf = 0;
  p->inBuf = 0;
  FUNC0(&p->canRead);
  FUNC0(&p->canWrite);
  FUNC1(&p->thread);
}