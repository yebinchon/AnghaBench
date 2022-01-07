
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_7__ {scalar_t__ idsubst; scalar_t__ posinsubst; int tnvariant; struct TYPE_7__* nextentry; struct TYPE_7__* nextvariant; } ;
typedef TYPE_1__ LexemeInfo ;


 scalar_t__ matchIdSubst (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static LexemeInfo *
findVariant(LexemeInfo *in, LexemeInfo *stored, uint16 curpos, LexemeInfo **newin, int newn)
{
 for (;;)
 {
  int i;
  LexemeInfo *ptr = newin[0];

  for (i = 0; i < newn; i++)
  {
   while (newin[i] && newin[i]->idsubst < ptr->idsubst)
    newin[i] = newin[i]->nextentry;

   if (newin[i] == ((void*)0))
    return in;

   if (newin[i]->idsubst > ptr->idsubst)
   {
    ptr = newin[i];
    i = -1;
    continue;
   }

   while (newin[i]->idsubst == ptr->idsubst)
   {
    if (newin[i]->posinsubst == curpos && newin[i]->tnvariant == newn)
    {
     ptr = newin[i];
     break;
    }

    newin[i] = newin[i]->nextentry;
    if (newin[i] == ((void*)0))
     return in;
   }

   if (newin[i]->idsubst != ptr->idsubst)
   {
    ptr = newin[i];
    i = -1;
    continue;
   }
  }

  if (i == newn && matchIdSubst(stored, ptr->idsubst) && (in == ((void*)0) || !matchIdSubst(in, ptr->idsubst)))
  {

   ptr->nextvariant = in;
   in = ptr;
  }


  for (i = 0; i < newn; i++)
   newin[i] = newin[i]->nextentry;
 }
}
