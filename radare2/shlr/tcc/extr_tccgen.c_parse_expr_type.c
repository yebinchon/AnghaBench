
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CType ;
typedef int AttributeDef ;


 int TYPE_ABSTRACT ;
 int expr_type (int *) ;
 scalar_t__ parse_btype (int *,int *) ;
 int skip (char) ;
 int type_decl (int *,int *,int*,int ) ;

__attribute__((used)) static void parse_expr_type(CType *type) {
 int n;
 AttributeDef ad;

 skip ('(');
 if (parse_btype (type, &ad)) {
  type_decl (type, &ad, &n, TYPE_ABSTRACT);
 } else {
  expr_type (type);
 }
 skip (')');
}
