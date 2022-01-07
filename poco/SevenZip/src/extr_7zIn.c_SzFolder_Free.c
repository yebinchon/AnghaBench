
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UInt32 ;
struct TYPE_4__ {size_t NumCoders; int * UnpackSizes; int * PackStreams; int * BindPairs; int * Coders; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CSzFolder ;


 int IAlloc_Free (int *,int *) ;
 int SzCoderInfo_Free (int *,int *) ;
 int SzFolder_Init (TYPE_1__*) ;

void SzFolder_Free(CSzFolder *p, ISzAlloc *alloc)
{
  UInt32 i;
  if (p->Coders)
    for (i = 0; i < p->NumCoders; i++)
      SzCoderInfo_Free(&p->Coders[i], alloc);
  IAlloc_Free(alloc, p->Coders);
  IAlloc_Free(alloc, p->BindPairs);
  IAlloc_Free(alloc, p->PackStreams);
  IAlloc_Free(alloc, p->UnpackSizes);
  SzFolder_Init(p);
}
