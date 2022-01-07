
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * pushedAtAction; struct TYPE_7__* prev; } ;
typedef TYPE_1__ TParserPosition ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static TParserPosition *
newTParserPosition(TParserPosition *prev)
{
 TParserPosition *res = (TParserPosition *) palloc(sizeof(TParserPosition));

 if (prev)
  memcpy(res, prev, sizeof(TParserPosition));
 else
  memset(res, 0, sizeof(TParserPosition));

 res->prev = prev;

 res->pushedAtAction = ((void*)0);

 return res;
}
