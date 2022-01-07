
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t; } ;
typedef TYPE_1__ CType ;


 int VT_ARRAY ;
 int VT_BTYPE ;
 int VT_CONSTANT ;
 int VT_FUNC ;
 int VT_VOLATILE ;
 int mk_pointer (TYPE_1__*) ;

__attribute__((used)) static inline void convert_parameter_type(CType *pt) {


 pt->t &= ~(VT_CONSTANT | VT_VOLATILE);

 pt->t &= ~VT_ARRAY;
 if ((pt->t & VT_BTYPE) == VT_FUNC) {
  mk_pointer (pt);
 }
}
