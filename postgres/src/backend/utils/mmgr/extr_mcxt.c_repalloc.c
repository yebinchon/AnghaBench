
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; TYPE_1__* methods; int isReset; } ;
struct TYPE_7__ {void* (* realloc ) (TYPE_2__*,void*,int ) ;} ;
typedef int Size ;
typedef TYPE_2__* MemoryContext ;


 int AllocSizeIsValid (int ) ;
 int Assert (int) ;
 int AssertNotInCriticalSection (TYPE_2__*) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 TYPE_2__* GetMemoryChunkContext (void*) ;
 int MemoryContextStats (int ) ;
 int TopMemoryContext ;
 int VALGRIND_MEMPOOL_CHANGE (TYPE_2__*,void*,void*,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errmsg (char*) ;
 void* stub1 (TYPE_2__*,void*,int ) ;
 scalar_t__ unlikely (int ) ;

void *
repalloc(void *pointer, Size size)
{
 MemoryContext context = GetMemoryChunkContext(pointer);
 void *ret;

 if (!AllocSizeIsValid(size))
  elog(ERROR, "invalid memory alloc request size %zu", size);

 AssertNotInCriticalSection(context);


 Assert(!context->isReset);

 ret = context->methods->realloc(context, pointer, size);
 if (unlikely(ret == ((void*)0)))
 {
  MemoryContextStats(TopMemoryContext);
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory"),
     errdetail("Failed on request of size %zu in memory context \"%s\".",
         size, context->name)));
 }

 VALGRIND_MEMPOOL_CHANGE(context, pointer, ret, size);

 return ret;
}
