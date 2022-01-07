
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int t; int * ref; } ;
struct TYPE_5__ {unsigned long long ull; } ;
typedef TYPE_1__ CValue ;
typedef TYPE_2__ CType ;


 int VT_CONST ;
 int vsetc (TYPE_2__*,int ,TYPE_1__*) ;

void vpush64(int ty, unsigned long long v) {
 CValue cval;
 CType ctype;
 ctype.t = ty;
 ctype.ref = ((void*)0);
 cval.ull = v;
 vsetc (&ctype, VT_CONST, &cval);
}
