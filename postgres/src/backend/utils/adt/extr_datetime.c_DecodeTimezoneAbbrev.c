
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pg_tz ;
struct TYPE_7__ {int type; int value; int token; } ;
typedef TYPE_1__ datetkn ;
struct TYPE_8__ {int numabbrevs; int abbrevs; } ;


 int DYNTZ ;
 int * FetchDynamicTimeZone (TYPE_2__*,TYPE_1__ const*) ;
 int TOKMAXLEN ;
 int UNKNOWN_FIELD ;
 TYPE_1__ const** abbrevcache ;
 TYPE_1__* datebsearch (char*,int ,int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 TYPE_2__* zoneabbrevtbl ;

int
DecodeTimezoneAbbrev(int field, char *lowtoken,
      int *offset, pg_tz **tz)
{
 int type;
 const datetkn *tp;

 tp = abbrevcache[field];

 if (tp == ((void*)0) || strncmp(lowtoken, tp->token, TOKMAXLEN) != 0)
 {
  if (zoneabbrevtbl)
   tp = datebsearch(lowtoken, zoneabbrevtbl->abbrevs,
        zoneabbrevtbl->numabbrevs);
  else
   tp = ((void*)0);
 }
 if (tp == ((void*)0))
 {
  type = UNKNOWN_FIELD;
  *offset = 0;
  *tz = ((void*)0);
 }
 else
 {
  abbrevcache[field] = tp;
  type = tp->type;
  if (type == DYNTZ)
  {
   *offset = 0;
   *tz = FetchDynamicTimeZone(zoneabbrevtbl, tp);
  }
  else
  {
   *offset = tp->value;
   *tz = ((void*)0);
  }
 }

 return type;
}
