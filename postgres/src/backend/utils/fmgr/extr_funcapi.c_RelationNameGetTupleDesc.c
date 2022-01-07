
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int Relation ;
typedef int RangeVar ;
typedef int List ;


 int AccessShareLock ;
 int CreateTupleDescCopy (int ) ;
 int RelationGetDescr (int ) ;
 int * makeRangeVarFromNameList (int *) ;
 int relation_close (int ,int ) ;
 int relation_openrv (int *,int ) ;
 int * stringToQualifiedNameList (char const*) ;

TupleDesc
RelationNameGetTupleDesc(const char *relname)
{
 RangeVar *relvar;
 Relation rel;
 TupleDesc tupdesc;
 List *relname_list;


 relname_list = stringToQualifiedNameList(relname);
 relvar = makeRangeVarFromNameList(relname_list);
 rel = relation_openrv(relvar, AccessShareLock);
 tupdesc = CreateTupleDescCopy(RelationGetDescr(rel));
 relation_close(rel, AccessShareLock);

 return tupdesc;
}
