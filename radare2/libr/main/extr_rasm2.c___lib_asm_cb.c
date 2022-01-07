
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int a; } ;
typedef int RLibPlugin ;
typedef TYPE_1__ RAsmState ;
typedef int RAsmPlugin ;


 int r_asm_add (int ,int *) ;

__attribute__((used)) static int __lib_asm_cb(RLibPlugin *pl, void *user, void *data) {
 RAsmPlugin *hand = (RAsmPlugin *)data;
 RAsmState *as = (RAsmState *)user;
 r_asm_add (as->a, hand);
 return 1;
}
