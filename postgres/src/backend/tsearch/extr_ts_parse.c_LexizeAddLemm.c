
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tail; } ;
struct TYPE_7__ {TYPE_4__ towork; int curSub; } ;
struct TYPE_6__ {int type; char* lemm; int lenlemm; } ;
typedef TYPE_1__ ParsedLex ;
typedef TYPE_2__ LexizeData ;


 int LPLAddTail (TYPE_4__*,TYPE_1__*) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
LexizeAddLemm(LexizeData *ld, int type, char *lemm, int lenlemm)
{
 ParsedLex *newpl = (ParsedLex *) palloc(sizeof(ParsedLex));

 newpl->type = type;
 newpl->lemm = lemm;
 newpl->lenlemm = lenlemm;
 LPLAddTail(&ld->towork, newpl);
 ld->curSub = ld->towork.tail;
}
