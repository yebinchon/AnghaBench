
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int value; int token; } ;
typedef TYPE_1__ datetkn ;


 int TOKMAXLEN ;
 int UNKNOWN_FIELD ;
 TYPE_1__* datebsearch (char*,int ,int ) ;
 TYPE_1__ const** deltacache ;
 int deltatktbl ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int szdeltatktbl ;

int
DecodeUnits(int field, char *lowtoken, int *val)
{
 int type;
 const datetkn *tp;


 if (deltacache[field] != ((void*)0) &&
  strncmp(lowtoken, deltacache[field]->token, TOKMAXLEN) == 0)
  tp = deltacache[field];
 else
  tp = datebsearch(lowtoken, deltatktbl, szdeltatktbl);
 deltacache[field] = tp;
 if (tp == ((void*)0))
 {
  type = UNKNOWN_FIELD;
  *val = 0;
 }
 else
 {
  type = tp->type;
  *val = tp->value;
 }

 return type;
}
