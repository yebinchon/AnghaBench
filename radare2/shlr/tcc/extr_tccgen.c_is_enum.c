
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t; } ;
typedef TYPE_1__ CType ;


 int VT_BTYPE ;
 int VT_ENUM ;

bool is_enum(CType *t) {
 return (t->t & VT_BTYPE) == VT_ENUM;
}
