
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NamedArgExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int arg ;
 int argnumber ;
 int location ;
 int name ;

__attribute__((used)) static bool
_equalNamedArgExpr(const NamedArgExpr *a, const NamedArgExpr *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_STRING_FIELD(name);
 COMPARE_SCALAR_FIELD(argnumber);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
