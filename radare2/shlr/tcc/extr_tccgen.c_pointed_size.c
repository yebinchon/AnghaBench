
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CType ;


 int pointed_type (int *) ;
 int type_size (int ,int*) ;

__attribute__((used)) static int pointed_size(CType *type) {
 int align;
 return type_size (pointed_type (type), &align);
}
