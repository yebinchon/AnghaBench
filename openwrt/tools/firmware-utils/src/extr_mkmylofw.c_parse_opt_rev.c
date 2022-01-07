
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;


 int errmsg (int ,char*,char*) ;
 TYPE_1__ fw_header ;
 scalar_t__ required_arg (char,char*) ;
 scalar_t__ str2u32 (char*,int *) ;

int
parse_opt_rev(char ch, char *arg)
{
 if (required_arg(ch, arg)) {
  return -1;
 }

 if (str2u32(arg, &fw_header.rev) != 0) {
  errmsg(0,"invalid revision number: %s", arg);
  return -1;
 }

 return 0;
}
