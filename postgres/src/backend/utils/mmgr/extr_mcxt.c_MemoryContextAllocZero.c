
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


 int AllocSizeIsValid (int ) ;
 int AssertArg (int ) ;
 int AssertNotInCriticalSection (TYPE_2__*) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
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
MemoryContextAllocZero(MemoryContext context, Size size)
{
 void *ret;

 AssertArg(MemoryContextIsValid(context));
 AssertNotInCriticalSection(context);

 if (!AllocSizeIsValid(size))
  elog(ERROR, "invalid memory alloc request size %zu", size);

 context->isReset = 0;

 ret = context->methods->alloc(context, size);
 if (unlikely(ret == ((void*)0)))
 {
  MemoryContextStats(TopMemoryContext);
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory"),
     errdetail("Failed on request of size %zu in memory context \"%s\".",
         size, context->name)));
 }

 VALGRIND_MEMPOOL_ALLOC(context, ret, size);

 MemSetAligned(ret, 0, size);

 return ret;
}
