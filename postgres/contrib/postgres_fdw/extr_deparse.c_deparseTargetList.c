
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef int StringInfo ;
typedef int Relation ;
typedef int RangeTblEntry ;
typedef int List ;
typedef int Index ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Bitmapset ;


 int ADD_REL_QUALIFIER (int ,int ) ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 int * NIL ;
 TYPE_1__* RelationGetDescr (int ) ;
 int SelfItemPointerAttributeNumber ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int appendStringInfoString (int ,char*) ;
 int bms_is_member (scalar_t__,int *) ;
 int deparseColumnRef (int ,int ,int,int *,int) ;
 int * lappend_int (int *,int) ;

__attribute__((used)) static void
deparseTargetList(StringInfo buf,
      RangeTblEntry *rte,
      Index rtindex,
      Relation rel,
      bool is_returning,
      Bitmapset *attrs_used,
      bool qualify_col,
      List **retrieved_attrs)
{
 TupleDesc tupdesc = RelationGetDescr(rel);
 bool have_wholerow;
 bool first;
 int i;

 *retrieved_attrs = NIL;


 have_wholerow = bms_is_member(0 - FirstLowInvalidHeapAttributeNumber,
          attrs_used);

 first = 1;
 for (i = 1; i <= tupdesc->natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, i - 1);


  if (attr->attisdropped)
   continue;

  if (have_wholerow ||
   bms_is_member(i - FirstLowInvalidHeapAttributeNumber,
        attrs_used))
  {
   if (!first)
    appendStringInfoString(buf, ", ");
   else if (is_returning)
    appendStringInfoString(buf, " RETURNING ");
   first = 0;

   deparseColumnRef(buf, rtindex, i, rte, qualify_col);

   *retrieved_attrs = lappend_int(*retrieved_attrs, i);
  }
 }





 if (bms_is_member(SelfItemPointerAttributeNumber - FirstLowInvalidHeapAttributeNumber,
       attrs_used))
 {
  if (!first)
   appendStringInfoString(buf, ", ");
  else if (is_returning)
   appendStringInfoString(buf, " RETURNING ");
  first = 0;

  if (qualify_col)
   ADD_REL_QUALIFIER(buf, rtindex);
  appendStringInfoString(buf, "ctid");

  *retrieved_attrs = lappend_int(*retrieved_attrs,
            SelfItemPointerAttributeNumber);
 }


 if (first && !is_returning)
  appendStringInfoString(buf, "NULL");
}
