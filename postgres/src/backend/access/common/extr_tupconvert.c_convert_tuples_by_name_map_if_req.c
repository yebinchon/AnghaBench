
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_10__ {scalar_t__ attlen; scalar_t__ attalign; scalar_t__ attisdropped; } ;
struct TYPE_9__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int AttrNumber ;


 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int* convert_tuples_by_name_map (TYPE_1__*,TYPE_1__*) ;
 int pfree (int*) ;

AttrNumber *
convert_tuples_by_name_map_if_req(TupleDesc indesc,
          TupleDesc outdesc)
{
 AttrNumber *attrMap;
 int n = outdesc->natts;
 int i;
 bool same;


 attrMap = convert_tuples_by_name_map(indesc, outdesc);





 if (indesc->natts == outdesc->natts)
 {
  same = 1;
  for (i = 0; i < n; i++)
  {
   Form_pg_attribute inatt;
   Form_pg_attribute outatt;

   if (attrMap[i] == (i + 1))
    continue;






   inatt = TupleDescAttr(indesc, i);
   outatt = TupleDescAttr(outdesc, i);
   if (attrMap[i] == 0 &&
    inatt->attisdropped &&
    inatt->attlen == outatt->attlen &&
    inatt->attalign == outatt->attalign)
    continue;

   same = 0;
   break;
  }
 }
 else
  same = 0;

 if (same)
 {

  pfree(attrMap);
  return ((void*)0);
 }
 else
  return attrMap;
}
