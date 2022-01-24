#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  thread; } ;
struct TYPE_8__ {scalar_t__ inBuf; TYPE_1__* mtCoder; scalar_t__ outBuf; TYPE_3__ thread; } ;
struct TYPE_7__ {scalar_t__ alloc; } ;
typedef  TYPE_2__ CMtThread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(CMtThread *p)
{
  FUNC0(p);

  if (FUNC4(&p->thread.thread))
  {
    FUNC3(&p->thread);
    FUNC2(&p->thread);
  }

  if (p->mtCoder->alloc)
    FUNC1(p->mtCoder->alloc, p->outBuf);
  p->outBuf = 0;

  if (p->mtCoder->alloc)
    FUNC1(p->mtCoder->alloc, p->inBuf);
  p->inBuf = 0;
}