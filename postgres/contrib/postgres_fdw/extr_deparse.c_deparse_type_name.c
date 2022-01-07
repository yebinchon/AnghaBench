
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int bits16 ;
typedef int Oid ;


 int FORMAT_TYPE_FORCE_QUALIFY ;
 int FORMAT_TYPE_TYPEMOD_GIVEN ;
 char* format_type_extended (int ,int ,int ) ;
 int is_builtin (int ) ;

__attribute__((used)) static char *
deparse_type_name(Oid type_oid, int32 typemod)
{
 bits16 flags = FORMAT_TYPE_TYPEMOD_GIVEN;

 if (!is_builtin(type_oid))
  flags |= FORMAT_TYPE_FORCE_QUALIFY;

 return format_type_extended(type_oid, typemod, flags);
}
