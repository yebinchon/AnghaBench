
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ atttypid; } ;
struct TYPE_7__ {int natts; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* Form_pg_attribute ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
compatCrosstabTupleDescs(TupleDesc ret_tupdesc, TupleDesc sql_tupdesc)
{
 int i;
 Form_pg_attribute ret_attr;
 Oid ret_atttypid;
 Form_pg_attribute sql_attr;
 Oid sql_atttypid;

 if (ret_tupdesc->natts < 2 ||
  sql_tupdesc->natts < 3)
  return 0;


 ret_atttypid = TupleDescAttr(ret_tupdesc, 0)->atttypid;
 sql_atttypid = TupleDescAttr(sql_tupdesc, 0)->atttypid;
 if (ret_atttypid != sql_atttypid)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("invalid return type"),
     errdetail("SQL rowid datatype does not match " "return rowid datatype.")));







 sql_attr = TupleDescAttr(sql_tupdesc, 2);
 for (i = 1; i < ret_tupdesc->natts; i++)
 {
  ret_attr = TupleDescAttr(ret_tupdesc, i);

  if (ret_attr->atttypid != sql_attr->atttypid)
   return 0;
 }


 return 1;
}
