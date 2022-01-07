
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; int member_0; } ;
typedef TYPE_1__ CValue ;


 int VT_CONST ;
 int int32_type ;
 int vsetc (int *,int ,TYPE_1__*) ;

void vpushi(int v) {
 CValue cval = { 0 };
 cval.i = v;
 vsetc (&int32_type, VT_CONST, &cval);
}
