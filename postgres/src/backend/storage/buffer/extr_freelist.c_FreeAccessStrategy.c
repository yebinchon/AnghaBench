
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * BufferAccessStrategy ;


 int pfree (int *) ;

void
FreeAccessStrategy(BufferAccessStrategy strategy)
{

 if (strategy != ((void*)0))
  pfree(strategy);
}
