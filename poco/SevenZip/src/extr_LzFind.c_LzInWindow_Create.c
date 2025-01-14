
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_9__ {scalar_t__ keepSizeBefore; scalar_t__ keepSizeAfter; scalar_t__ blockSize; int * bufferBase; scalar_t__ directInput; } ;
struct TYPE_8__ {scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CMatchFinder ;
typedef int Byte ;


 int LzInWindow_Free (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_1__*,size_t) ;

__attribute__((used)) static int LzInWindow_Create(CMatchFinder *p, UInt32 keepSizeReserv, ISzAlloc *alloc)
{
  UInt32 blockSize = p->keepSizeBefore + p->keepSizeAfter + keepSizeReserv;
  if (p->directInput)
  {
    p->blockSize = blockSize;
    return 1;
  }
  if (p->bufferBase == 0 || p->blockSize != blockSize)
  {
    LzInWindow_Free(p, alloc);
    p->blockSize = blockSize;
    p->bufferBase = (Byte *)alloc->Alloc(alloc, (size_t)blockSize);
  }
  return (p->bufferBase != 0);
}
