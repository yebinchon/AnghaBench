
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
 TYPE_1__ const** datecache ;
 int datetktbl ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int szdatetktbl ;

__attribute__((used)) static int
DecodeSpecial(int field, char *lowtoken, int *val)
{
 int type;
 const datetkn *tp;


 if (datecache[field] != ((void*)0) &&
  strncmp(lowtoken, datecache[field]->token, TOKMAXLEN) == 0)
  tp = datecache[field];
 else
 {
  tp = ((void*)0);
  if (!tp)
   tp = datebsearch(lowtoken, datetktbl, szdatetktbl);
 }
 datecache[field] = tp;
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
