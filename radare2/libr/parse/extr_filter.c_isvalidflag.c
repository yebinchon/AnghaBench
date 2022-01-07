
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ RFlagItem ;


 scalar_t__ strchr (int ,char) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static bool isvalidflag(RFlagItem *flag) {
 if (flag) {
  if (strstr (flag->name, "main") || strstr (flag->name, "entry")) {
   return 1;
  }
  if (strchr (flag->name, '.')) {
   return 1;
  }
 }
 return 0;
}
