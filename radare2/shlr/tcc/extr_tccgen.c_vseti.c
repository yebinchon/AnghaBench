
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ref; int t; int member_0; } ;
typedef TYPE_1__ CType ;


 int VT_INT32 ;
 int vset (TYPE_1__*,int,int) ;

__attribute__((used)) static void vseti(int r, int v) {
 CType type = { 0 };
 type.t = VT_INT32;
 type.ref = ((void*)0);
 vset (&type, r, v);
}
