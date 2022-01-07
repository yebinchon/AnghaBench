
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int PLpgSQL_type ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int List ;


 int InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 int NoLock ;
 int RangeVarGetRelid (int *,int ,int) ;
 int get_rel_type_id (int ) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int lsecond (int *) ;
 int * makeRangeVar (int ,int ,int) ;
 int makeTypeNameFromNameList (int *) ;
 int * plpgsql_build_datatype (int ,int,int ,int ) ;
 int plpgsql_compile_tmp_cxt ;
 int strVal (int ) ;

PLpgSQL_type *
plpgsql_parse_cwordrowtype(List *idents)
{
 Oid classOid;
 RangeVar *relvar;
 MemoryContext oldCxt;





 if (list_length(idents) != 2)
  return ((void*)0);


 oldCxt = MemoryContextSwitchTo(plpgsql_compile_tmp_cxt);


 relvar = makeRangeVar(strVal(linitial(idents)),
        strVal(lsecond(idents)),
        -1);
 classOid = RangeVarGetRelid(relvar, NoLock, 0);

 MemoryContextSwitchTo(oldCxt);


 return plpgsql_build_datatype(get_rel_type_id(classOid), -1, InvalidOid,
          makeTypeNameFromNameList(idents));
}
