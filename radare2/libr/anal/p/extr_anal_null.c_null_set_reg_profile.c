
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RAnal ;


 int r_reg_set_profile_string (int ,char*) ;

__attribute__((used)) static int null_set_reg_profile(RAnal* anal){
 return r_reg_set_profile_string(anal->reg, "");
}
