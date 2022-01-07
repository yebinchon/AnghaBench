
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idsubst; scalar_t__ posinsubst; scalar_t__ tnvariant; } ;
typedef TYPE_1__ LexemeInfo ;



__attribute__((used)) static int
cmpLexemeInfo(LexemeInfo *a, LexemeInfo *b)
{
 if (a == ((void*)0) || b == ((void*)0))
  return 0;

 if (a->idsubst == b->idsubst)
 {
  if (a->posinsubst == b->posinsubst)
  {
   if (a->tnvariant == b->tnvariant)
    return 0;

   return (a->tnvariant > b->tnvariant) ? 1 : -1;
  }

  return (a->posinsubst > b->posinsubst) ? 1 : -1;
 }

 return (a->idsubst > b->idsubst) ? 1 : -1;
}
