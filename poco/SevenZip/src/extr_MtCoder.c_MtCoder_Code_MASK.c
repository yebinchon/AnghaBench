#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* param; int /*<<< orphan*/  func; int /*<<< orphan*/  thread; } ;
struct TYPE_11__ {unsigned int numThreads; scalar_t__ res; TYPE_1__* threads; int /*<<< orphan*/  progress; int /*<<< orphan*/  mtProgress; } ;
struct TYPE_10__ {TYPE_3__ thread; int /*<<< orphan*/  canRead; int /*<<< orphan*/  canWrite; int /*<<< orphan*/  stopReading; } ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ CMtThread ;
typedef  TYPE_2__ CMtCoder ;
typedef  TYPE_3__ CLoopThread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_THREAD ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  ThreadFunc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  True ; 

SRes FUNC9(CMtCoder *p)
{
  unsigned i, numThreads = p->numThreads;
  SRes res = SZ_OK;
  p->res = SZ_OK;

  FUNC6(&p->mtProgress, p->progress);

  for (i = 0; i < numThreads; i++)
  {
    FUNC7(FUNC1(&p->threads[i]));
  }

  for (i = 0; i < numThreads; i++)
  {
    CMtThread *t = &p->threads[i];
    CLoopThread *lt = &t->thread;

    if (!FUNC8(&lt->thread))
    {
      lt->func = ThreadFunc;
      lt->param = t;

      if (FUNC3(lt) != SZ_OK)
      {
        res = SZ_ERROR_THREAD;
        break;
      }
    }
  }

  if (res == SZ_OK)
  {
    unsigned j;
    for (i = 0; i < numThreads; i++)
    {
      CMtThread *t = &p->threads[i];
      if (FUNC4(&t->thread) != SZ_OK)
      {
        res = SZ_ERROR_THREAD;
        p->threads[0].stopReading = True;
        break;
      }
    }

    FUNC2(&p->threads[0].canWrite);
    FUNC2(&p->threads[0].canRead);

    for (j = 0; j < i; j++)
      FUNC5(&p->threads[j].thread);
  }

  for (i = 0; i < numThreads; i++)
    FUNC0(&p->threads[i]);
  return (res == SZ_OK) ? p->res : res;
}