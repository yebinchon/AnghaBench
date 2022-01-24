#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* Code ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,size_t,int) ;} ;
struct TYPE_10__ {size_t (* Write ) (TYPE_3__*,int /*<<< orphan*/ ,size_t) ;} ;
struct TYPE_9__ {int stopReading; size_t outBufSize; int /*<<< orphan*/  canWrite; int /*<<< orphan*/  outBuf; TYPE_1__* mtCoder; scalar_t__ stopWriting; int /*<<< orphan*/  index; int /*<<< orphan*/  inBuf; int /*<<< orphan*/  canRead; } ;
struct TYPE_8__ {size_t blockSize; TYPE_3__* outStream; int /*<<< orphan*/  mtProgress; TYPE_4__* mtCallback; int /*<<< orphan*/  inStream; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_2__ CMtThread ;
typedef  int Bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_FAIL ; 
 int /*<<< orphan*/  SZ_ERROR_THREAD ; 
 int /*<<< orphan*/  SZ_ERROR_WRITE ; 
 int /*<<< orphan*/  SZ_OK ; 
 void* True ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,size_t,int) ; 
 size_t FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static SRes FUNC8(CMtThread *p, Bool *stop)
{
  CMtThread *next;
  *stop = True;
  if (FUNC1(&p->canRead) != 0)
    return SZ_ERROR_THREAD;
  
  next = FUNC3(p);
  
  if (p->stopReading)
  {
    next->stopReading = True;
    return FUNC0(&next->canRead) == 0 ? SZ_OK : SZ_ERROR_THREAD;
  }

  {
    size_t size = p->mtCoder->blockSize;
    size_t destSize = p->outBufSize;

    FUNC5(FUNC2(p->mtCoder->inStream, p->inBuf, &size));
    next->stopReading = *stop = (size != p->mtCoder->blockSize);
    if (FUNC0(&next->canRead) != 0)
      return SZ_ERROR_THREAD;

    FUNC5(p->mtCoder->mtCallback->Code(p->mtCoder->mtCallback, p->index,
        p->outBuf, &destSize, p->inBuf, size, *stop));

    FUNC4(&p->mtCoder->mtProgress, p->index);

    if (FUNC1(&p->canWrite) != 0)
      return SZ_ERROR_THREAD;
    if (p->stopWriting)
      return SZ_ERROR_FAIL;
    if (p->mtCoder->outStream->Write(p->mtCoder->outStream, p->outBuf, destSize) != destSize)
      return SZ_ERROR_WRITE;
    return FUNC0(&next->canWrite) == 0 ? SZ_OK : SZ_ERROR_THREAD;
  }
}