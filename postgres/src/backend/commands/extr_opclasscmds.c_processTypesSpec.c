
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeName ;
typedef int Oid ;
typedef int List ;


 int Assert (int) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int * NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ lsecond (int *) ;
 int typenameTypeId (int *,int *) ;

__attribute__((used)) static void
processTypesSpec(List *args, Oid *lefttype, Oid *righttype)
{
 TypeName *typeName;

 Assert(args != NIL);

 typeName = (TypeName *) linitial(args);
 *lefttype = typenameTypeId(((void*)0), typeName);

 if (list_length(args) > 1)
 {
  typeName = (TypeName *) lsecond(args);
  *righttype = typenameTypeId(((void*)0), typeName);
 }
 else
  *righttype = *lefttype;

 if (list_length(args) > 2)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("one or two argument types must be specified")));
}
