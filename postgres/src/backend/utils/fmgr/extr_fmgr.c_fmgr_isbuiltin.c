
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16 ;
typedef size_t Oid ;
typedef int FmgrBuiltin ;


 size_t InvalidOidBuiltinMapping ;
 size_t* fmgr_builtin_oid_index ;
 int const* fmgr_builtins ;
 size_t fmgr_last_builtin_oid ;

__attribute__((used)) static const FmgrBuiltin *
fmgr_isbuiltin(Oid id)
{
 uint16 index;


 if (id > fmgr_last_builtin_oid)
  return ((void*)0);





 index = fmgr_builtin_oid_index[id];
 if (index == InvalidOidBuiltinMapping)
  return ((void*)0);

 return &fmgr_builtins[index];
}
