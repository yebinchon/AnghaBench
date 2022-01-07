
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CType ;


 int compare_types (int *,int *,int ) ;

__attribute__((used)) static int is_compatible_types(CType *type1, CType *type2) {
 return compare_types (type1, type2, 0);
}
