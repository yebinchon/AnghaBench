
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; long long ull; } ;
typedef TYPE_1__ CValue ;


 int PTR_SIZE ;
 int VT_CONST ;
 int size_type ;
 int vsetc (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void vpushs(long long v) {
 CValue cval;
 if (PTR_SIZE == 4) {
  cval.i = (int) v;
 } else {
  cval.ull = v;
 }
 vsetc (&size_type, VT_CONST, &cval);
}
