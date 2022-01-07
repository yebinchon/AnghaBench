
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int BOOLOID ;
 int BlessTupleDesc (int ) ;
 int CreateTemplateTupleDesc (scalar_t__) ;
 int INT8OID ;
 int TupleDescInitEntry (int ,scalar_t__,char*,int ,int,int ) ;

__attribute__((used)) static TupleDesc
pg_visibility_tupdesc(bool include_blkno, bool include_pd)
{
 TupleDesc tupdesc;
 AttrNumber maxattr = 2;
 AttrNumber a = 0;

 if (include_blkno)
  ++maxattr;
 if (include_pd)
  ++maxattr;
 tupdesc = CreateTemplateTupleDesc(maxattr);
 if (include_blkno)
  TupleDescInitEntry(tupdesc, ++a, "blkno", INT8OID, -1, 0);
 TupleDescInitEntry(tupdesc, ++a, "all_visible", BOOLOID, -1, 0);
 TupleDescInitEntry(tupdesc, ++a, "all_frozen", BOOLOID, -1, 0);
 if (include_pd)
  TupleDescInitEntry(tupdesc, ++a, "pd_all_visible", BOOLOID, -1, 0);
 Assert(a == maxattr);

 return BlessTupleDesc(tupdesc);
}
