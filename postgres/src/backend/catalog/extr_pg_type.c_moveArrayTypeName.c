
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int CommandCounterIncrement () ;
 int OidIsValid (scalar_t__) ;
 int RenameTypeInternal (scalar_t__,char*,scalar_t__) ;
 scalar_t__ get_array_type (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;
 int get_typisdefined (scalar_t__) ;
 char* makeArrayTypeName (char const*,scalar_t__) ;
 int pfree (char*) ;

bool
moveArrayTypeName(Oid typeOid, const char *typeName, Oid typeNamespace)
{
 Oid elemOid;
 char *newname;


 if (!get_typisdefined(typeOid))
  return 1;


 elemOid = get_element_type(typeOid);
 if (!OidIsValid(elemOid) ||
  get_array_type(elemOid) != typeOid)
  return 0;







 newname = makeArrayTypeName(typeName, typeNamespace);


 RenameTypeInternal(typeOid, newname, typeNamespace);





 CommandCounterIncrement();

 pfree(newname);

 return 1;
}
