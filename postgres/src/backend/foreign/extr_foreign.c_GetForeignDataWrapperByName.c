
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ForeignDataWrapper ;


 int * GetForeignDataWrapper (int ) ;
 int OidIsValid (int ) ;
 int get_foreign_data_wrapper_oid (char const*,int) ;

ForeignDataWrapper *
GetForeignDataWrapperByName(const char *fdwname, bool missing_ok)
{
 Oid fdwId = get_foreign_data_wrapper_oid(fdwname, missing_ok);

 if (!OidIsValid(fdwId))
  return ((void*)0);

 return GetForeignDataWrapper(fdwId);
}
