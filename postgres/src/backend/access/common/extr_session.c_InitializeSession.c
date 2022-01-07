
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Session ;


 int CurrentSession ;
 int MemoryContextAllocZero (int ,int) ;
 int TopMemoryContext ;

void
InitializeSession(void)
{
 CurrentSession = MemoryContextAllocZero(TopMemoryContext, sizeof(Session));
}
