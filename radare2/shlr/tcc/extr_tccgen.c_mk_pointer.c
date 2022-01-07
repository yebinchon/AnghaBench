
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; int * ref; } ;
typedef int Sym ;
typedef TYPE_1__ CType ;


 int SYM_FIELD ;
 int VT_PTR ;
 int VT_TYPE ;
 int * sym_push (int ,TYPE_1__*,int ,int) ;

void mk_pointer(CType *type) {
 Sym *s;
 s = sym_push (SYM_FIELD, type, 0, -1);
 if (!s) {
  return;
 }
 type->t = VT_PTR | (type->t & ~VT_TYPE);
 type->ref = s;
}
