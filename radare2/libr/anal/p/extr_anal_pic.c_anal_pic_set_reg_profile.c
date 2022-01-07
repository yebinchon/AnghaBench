
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cpu; } ;
typedef TYPE_1__ RAnal ;


 int anal_pic_midrange_set_reg_profile (TYPE_1__*) ;
 int anal_pic_pic18_set_reg_profile (TYPE_1__*) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;

__attribute__((used)) static int anal_pic_set_reg_profile(RAnal *anal) {
 if (anal->cpu && strcasecmp (anal->cpu, "baseline") == 0) {

  return anal_pic_midrange_set_reg_profile (anal);
 }
 if (anal->cpu && strcasecmp (anal->cpu, "midrange") == 0) {
  return anal_pic_midrange_set_reg_profile (anal);
 }
 if (anal->cpu && strcasecmp (anal->cpu, "pic18") == 0) {
  return anal_pic_pic18_set_reg_profile (anal);
 }
 return -1;
}
