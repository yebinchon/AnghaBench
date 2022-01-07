
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CType ;
typedef int AttributeDef ;


 int TYPE_ABSTRACT ;
 int expect (char*) ;
 int parse_btype (int *,int *) ;
 int type_decl (int *,int *,int*,int ) ;

__attribute__((used)) static void parse_type(CType *type) {
 AttributeDef ad;
 int n;

 if (!parse_btype (type, &ad)) {
  expect ("type");
 }
 type_decl (type, &ad, &n, TYPE_ABSTRACT);
}
