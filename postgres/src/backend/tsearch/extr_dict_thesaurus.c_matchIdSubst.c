
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_3__ {scalar_t__ idsubst; struct TYPE_3__* nextvariant; } ;
typedef TYPE_1__ LexemeInfo ;



__attribute__((used)) static bool
matchIdSubst(LexemeInfo *stored, uint32 idsubst)
{
 bool res = 1;

 if (stored)
 {
  res = 0;

  for (; stored; stored = stored->nextvariant)
   if (stored->idsubst == idsubst)
   {
    res = 1;
    break;
   }
 }

 return res;
}
