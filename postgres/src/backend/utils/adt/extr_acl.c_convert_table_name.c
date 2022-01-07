
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int RangeVar ;
typedef int Oid ;


 int NoLock ;
 int RangeVarGetRelid (int *,int ,int) ;
 int * makeRangeVarFromNameList (int ) ;
 int textToQualifiedNameList (int *) ;

__attribute__((used)) static Oid
convert_table_name(text *tablename)
{
 RangeVar *relrv;

 relrv = makeRangeVarFromNameList(textToQualifiedNameList(tablename));


 return RangeVarGetRelid(relrv, NoLock, 0);
}
