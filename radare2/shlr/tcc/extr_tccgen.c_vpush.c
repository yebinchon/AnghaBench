
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ CValue ;
typedef int CType ;


 int VT_CONST ;
 int vsetc (int *,int ,TYPE_1__*) ;

void vpush(CType *type) {
 CValue cval = { 0 };
 vsetc (type, VT_CONST, &cval);
}
