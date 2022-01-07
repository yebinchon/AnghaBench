
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long ll; } ;
typedef TYPE_1__ CValue ;


 int VT_CONST ;
 int int64_type ;
 int vsetc (int *,int ,TYPE_1__*) ;

void vpushll(long long v) {
 CValue cval;
 cval.ll = v;
 vsetc (&int64_type, VT_CONST, &cval);
}
