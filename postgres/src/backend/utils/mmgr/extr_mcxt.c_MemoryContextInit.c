
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int *,char*,int,...) ;
 int AssertState (int ) ;
 int * CurrentMemoryContext ;
 void* ErrorContext ;
 int MemoryContextAllowInCriticalSection (void*,int) ;
 int * TopMemoryContext ;

void
MemoryContextInit(void)
{
 AssertState(TopMemoryContext == ((void*)0));




 TopMemoryContext = AllocSetContextCreate((MemoryContext) ((void*)0),
            "TopMemoryContext",
            ALLOCSET_DEFAULT_SIZES);





 CurrentMemoryContext = TopMemoryContext;
 ErrorContext = AllocSetContextCreate(TopMemoryContext,
           "ErrorContext",
           8 * 1024,
           8 * 1024,
           8 * 1024);
 MemoryContextAllowInCriticalSection(ErrorContext, 1);
}
