
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* Form_pg_attribute ;


 scalar_t__ RECORDOID ;
 int ReleaseTupleDesc (TYPE_1__*) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 TYPE_1__* lookup_rowtype_tupdesc_domain (scalar_t__,int,int) ;

__attribute__((used)) static bool
rowtype_field_matches(Oid rowtypeid, int fieldnum,
       Oid expectedtype, int32 expectedtypmod,
       Oid expectedcollation)
{
 TupleDesc tupdesc;
 Form_pg_attribute attr;


 if (rowtypeid == RECORDOID)
  return 1;
 tupdesc = lookup_rowtype_tupdesc_domain(rowtypeid, -1, 0);
 if (fieldnum <= 0 || fieldnum > tupdesc->natts)
 {
  ReleaseTupleDesc(tupdesc);
  return 0;
 }
 attr = TupleDescAttr(tupdesc, fieldnum - 1);
 if (attr->attisdropped ||
  attr->atttypid != expectedtype ||
  attr->atttypmod != expectedtypmod ||
  attr->attcollation != expectedcollation)
 {
  ReleaseTupleDesc(tupdesc);
  return 0;
 }
 ReleaseTupleDesc(tupdesc);
 return 1;
}
