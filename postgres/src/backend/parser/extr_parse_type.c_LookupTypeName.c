
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TypeName ;
typedef int Type ;
typedef int ParseState ;


 int LookupTypeNameExtended (int *,int const*,int *,int,int) ;

Type
LookupTypeName(ParseState *pstate, const TypeName *typeName,
      int32 *typmod_p, bool missing_ok)
{
 return LookupTypeNameExtended(pstate,
          typeName, typmod_p, 1, missing_ok);
}
