
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct user_desc {int contents; int seg_not_present; scalar_t__ seg_32bit; } ;


 int install_valid_mode (struct user_desc const*,int ,int,int) ;

__attribute__((used)) static bool install_valid(const struct user_desc *desc, uint32_t ar)
{
 bool ret = install_valid_mode(desc, ar, 0, 1);

 if (desc->contents <= 1 && desc->seg_32bit &&
     !desc->seg_not_present) {

  install_valid_mode(desc, ar, 0, 0);
 }

 return ret;
}
