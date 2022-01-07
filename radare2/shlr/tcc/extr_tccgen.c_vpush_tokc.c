
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t; int * ref; int member_0; } ;
typedef TYPE_1__ CType ;


 int VT_CONST ;
 int tokc ;
 int vsetc (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void vpush_tokc(int t) {
 CType type = { 0 };
 type.t = t;
 type.ref = ((void*)0);
 vsetc (&type, VT_CONST, &tokc);
}
