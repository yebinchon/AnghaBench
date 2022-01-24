#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  alloc; scalar_t__ outBuf; int /*<<< orphan*/  mtCoder; int /*<<< orphan*/  allocBig; TYPE_1__* coders; } ;
struct TYPE_3__ {scalar_t__ enc; } ;
typedef  TYPE_1__ CLzma2EncInt ;
typedef  scalar_t__ CLzma2EncHandle ;
typedef  TYPE_2__ CLzma2Enc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int NUM_MT_CODER_THREADS_MAX ; 

void FUNC3(CLzma2EncHandle pp)
{
  CLzma2Enc *p = (CLzma2Enc *)pp;
  unsigned i;
  for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
  {
    CLzma2EncInt *t = &p->coders[i];
    if (t->enc)
    {
      FUNC1(t->enc, p->alloc, p->allocBig);
      t->enc = 0;
    }
  }

  #ifndef _7ZIP_ST
  FUNC2(&p->mtCoder);
  #endif

  FUNC0(p->alloc, p->outBuf);
  FUNC0(p->alloc, pp);
}