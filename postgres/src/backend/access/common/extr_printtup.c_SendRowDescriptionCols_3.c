
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef scalar_t__ int16 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ resorigcol; scalar_t__ resorigtbl; scalar_t__ resjunk; } ;
typedef TYPE_2__ TargetEntry ;
struct TYPE_9__ {scalar_t__ attlen; int attname; scalar_t__ atttypmod; scalar_t__ atttypid; } ;
struct TYPE_7__ {int natts; } ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef int ListCell ;
typedef int List ;
typedef TYPE_3__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int MAX_CONVERSION_GROWTH ;
 int NAMEDATALEN ;
 int NameStr (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int enlargeStringInfo (int ,int) ;
 scalar_t__ getBaseTypeAndTypmod (scalar_t__,scalar_t__*) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int *) ;
 int * lnext (int *,int *) ;
 int pq_writeint16 (int ,scalar_t__) ;
 int pq_writeint32 (int ,scalar_t__) ;
 int pq_writestring (int ,int ) ;

__attribute__((used)) static void
SendRowDescriptionCols_3(StringInfo buf, TupleDesc typeinfo, List *targetlist, int16 *formats)
{
 int natts = typeinfo->natts;
 int i;
 ListCell *tlist_item = list_head(targetlist);
 enlargeStringInfo(buf, (NAMEDATALEN * MAX_CONVERSION_GROWTH
       + sizeof(Oid)
       + sizeof(AttrNumber)
       + sizeof(Oid)
       + sizeof(int16)
       + sizeof(int32)
       + sizeof(int16)
       ) * natts);

 for (i = 0; i < natts; ++i)
 {
  Form_pg_attribute att = TupleDescAttr(typeinfo, i);
  Oid atttypid = att->atttypid;
  int32 atttypmod = att->atttypmod;
  Oid resorigtbl;
  AttrNumber resorigcol;
  int16 format;





  atttypid = getBaseTypeAndTypmod(atttypid, &atttypmod);


  while (tlist_item &&
      ((TargetEntry *) lfirst(tlist_item))->resjunk)
   tlist_item = lnext(targetlist, tlist_item);
  if (tlist_item)
  {
   TargetEntry *tle = (TargetEntry *) lfirst(tlist_item);

   resorigtbl = tle->resorigtbl;
   resorigcol = tle->resorigcol;
   tlist_item = lnext(targetlist, tlist_item);
  }
  else
  {

   resorigtbl = 0;
   resorigcol = 0;
  }

  if (formats)
   format = formats[i];
  else
   format = 0;

  pq_writestring(buf, NameStr(att->attname));
  pq_writeint32(buf, resorigtbl);
  pq_writeint16(buf, resorigcol);
  pq_writeint32(buf, atttypid);
  pq_writeint16(buf, att->attlen);
  pq_writeint32(buf, atttypmod);
  pq_writeint16(buf, format);
 }
}
