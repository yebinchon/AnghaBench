
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int attcollation; int atttypid; int attname; } ;
struct TYPE_6__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;


 int CheckAttributeType (int,int ,int ,int ,int) ;
 int ERRCODE_DUPLICATE_COLUMN ;
 int ERRCODE_TOO_MANY_COLUMNS ;
 int ERROR ;
 int MaxHeapAttributeNumber ;
 int NIL ;
 int NameStr (int ) ;
 char RELKIND_COMPOSITE_TYPE ;
 char RELKIND_VIEW ;
 int * SystemAttributeByName (int) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 scalar_t__ strcmp (int,int) ;

void
CheckAttributeNamesTypes(TupleDesc tupdesc, char relkind,
       int flags)
{
 int i;
 int j;
 int natts = tupdesc->natts;


 if (natts < 0 || natts > MaxHeapAttributeNumber)
  ereport(ERROR,
    (errcode(ERRCODE_TOO_MANY_COLUMNS),
     errmsg("tables can have at most %d columns",
      MaxHeapAttributeNumber)));







 if (relkind != RELKIND_VIEW && relkind != RELKIND_COMPOSITE_TYPE)
 {
  for (i = 0; i < natts; i++)
  {
   Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

   if (SystemAttributeByName(NameStr(attr->attname)) != ((void*)0))
    ereport(ERROR,
      (errcode(ERRCODE_DUPLICATE_COLUMN),
       errmsg("column name \"%s\" conflicts with a system column name",
        NameStr(attr->attname))));
  }
 }




 for (i = 1; i < natts; i++)
 {
  for (j = 0; j < i; j++)
  {
   if (strcmp(NameStr(TupleDescAttr(tupdesc, j)->attname),
        NameStr(TupleDescAttr(tupdesc, i)->attname)) == 0)
    ereport(ERROR,
      (errcode(ERRCODE_DUPLICATE_COLUMN),
       errmsg("column name \"%s\" specified more than once",
        NameStr(TupleDescAttr(tupdesc, j)->attname))));
  }
 }




 for (i = 0; i < natts; i++)
 {
  CheckAttributeType(NameStr(TupleDescAttr(tupdesc, i)->attname),
         TupleDescAttr(tupdesc, i)->atttypid,
         TupleDescAttr(tupdesc, i)->attcollation,
         NIL,
         flags);
 }
}
