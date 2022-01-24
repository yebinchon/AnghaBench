#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mtProgress; } ;
struct TYPE_10__ {TYPE_1__ mtCoder; int /*<<< orphan*/  allocBig; int /*<<< orphan*/  alloc; int /*<<< orphan*/  props; TYPE_3__* coders; } ;
struct TYPE_9__ {size_t srcPos; int /*<<< orphan*/  enc; } ;
struct TYPE_8__ {TYPE_4__* lzma2Enc; } ;
typedef  scalar_t__ SRes ;
typedef  TYPE_2__ CMtCallbackImp ;
typedef  TYPE_3__ CLzma2EncInt ;
typedef  TYPE_4__ CLzma2Enc ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA2_KEEP_WINDOW_SIZE ; 
 scalar_t__ FUNC0 (TYPE_3__*,scalar_t__*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__ const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_FAIL ; 
 scalar_t__ SZ_ERROR_OUTPUT_EOF ; 
 scalar_t__ SZ_ERROR_PROGRESS ; 
 scalar_t__ SZ_OK ; 

__attribute__((used)) static SRes FUNC6(void *pp, unsigned index, Byte *dest, size_t *destSize,
      const Byte *src, size_t srcSize, int finished)
{
  CMtCallbackImp *imp = (CMtCallbackImp *)pp;
  CLzma2Enc *mainEncoder = imp->lzma2Enc;
  CLzma2EncInt *p = &mainEncoder->coders[index];

  SRes res = SZ_OK;
  {
    size_t destLim = *destSize;
    *destSize = 0;

    if (srcSize != 0)
    {
      FUNC5(FUNC1(p, &mainEncoder->props));
     
      FUNC5(FUNC3(p->enc, src, srcSize, LZMA2_KEEP_WINDOW_SIZE,
          mainEncoder->alloc, mainEncoder->allocBig));
     
      while (p->srcPos < srcSize)
      {
        size_t packSize = destLim - *destSize;
        res = FUNC0(p, dest + *destSize, &packSize, NULL);
        if (res != SZ_OK)
          break;
        *destSize += packSize;

        if (packSize == 0)
        {
          res = SZ_ERROR_FAIL;
          break;
        }

        if (FUNC4(&mainEncoder->mtCoder.mtProgress, index, p->srcPos, *destSize) != SZ_OK)
        {
          res = SZ_ERROR_PROGRESS;
          break;
        }
      }
      FUNC2(p->enc);
      if (res != SZ_OK)
        return res;
    }
    if (finished)
    {
      if (*destSize == destLim)
        return SZ_ERROR_OUTPUT_EOF;
      dest[(*destSize)++] = 0;
    }
  }
  return res;
}