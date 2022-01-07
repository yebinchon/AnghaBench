
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int isReset; int name; TYPE_1__* methods; } ;
struct TYPE_8__ {void* (* alloc ) (TYPE_2__*,int ) ;} ;
typedef int Size ;
typedef TYPE_2__* MemoryContext ;


 int AllocHugeSizeIsValid (int ) ;
 int AllocSizeIsValid (int ) ;
 int AssertArg (int ) ;
 int AssertNotInCriticalSection (TYPE_2__*) ;
 TYPE_2__* CurrentMemoryContext ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int MCXT_ALLOC_HUGE ;
 int MCXT_ALLOC_NO_OOM ;
 int MCXT_ALLOC_ZERO ;
 int MemSetAligned (void*,int ,int ) ;
 int MemoryContextIsValid (TYPE_2__*) ;
 int MemoryContextStats (int ) ;
 int TopMemoryContext ;
 int VALGRIND_MEMPOOL_ALLOC (TYPE_2__*,void*,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errmsg (char*) ;
 void* stub1 (TYPE_2__*,int ) ;
 scalar_t__ unlikely (int ) ;

void *
palloc_extended(Size size, int flags)
{

 void *ret;
 MemoryContext context = CurrentMemoryContext;

 AssertArg(MemoryContextIsValid(context));
 AssertNotInCriticalSection(context);

 if (((flags & MCXT_ALLOC_HUGE) != 0 && !AllocHugeSizeIsValid(size)) ||
  ((flags & MCXT_ALLOC_HUGE) == 0 && !AllocSizeIsValid(size)))
  elog(ERROR, "invalid memory alloc request size %zu", size);

 context->isReset = 0;

 ret = context->methods->alloc(context, size);
 if (unlikely(ret == ((void*)0)))
 {
  if ((flags & MCXT_ALLOC_NO_OOM) == 0)
  {
   MemoryContextStats(TopMemoryContext);
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory"),
      errdetail("Failed on request of size %zu in memory context \"%s\".",
          size, context->name)));
  }
  return ((void*)0);
 }

 VALGRIND_MEMPOOL_ALLOC(context, ret, size);

 if ((flags & MCXT_ALLOC_ZERO) != 0)
  MemSetAligned(ret, 0, size);

 return ret;
}
