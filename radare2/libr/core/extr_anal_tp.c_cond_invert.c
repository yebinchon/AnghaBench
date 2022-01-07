
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _RAnalCond ;
struct TYPE_3__ {int verbose; } ;
typedef TYPE_1__ RAnal ;






 int eprintf (char*) ;

__attribute__((used)) static _RAnalCond cond_invert(RAnal *anal, _RAnalCond cond) {
 switch (cond) {
 case 129:
  return 130;
 case 128:
  return 131;
 case 131:
  return 128;
 case 130:
  return 129;
 default:
  if (anal->verbose) {
   eprintf ("Unhandled conditional swap\n");
  }
  break;
 }
 return 0;


}
