
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int anal; } ;
typedef int RLibPlugin ;
typedef TYPE_1__ RAsmState ;
typedef int RAnalPlugin ;


 int r_anal_add (int ,int *) ;

__attribute__((used)) static int __lib_anal_cb(RLibPlugin *pl, void *user, void *data) {
 RAnalPlugin *hand = (RAnalPlugin *)data;
 RAsmState *as = (RAsmState *)user;
 r_anal_add (as->anal, hand);
 return 1;
}
