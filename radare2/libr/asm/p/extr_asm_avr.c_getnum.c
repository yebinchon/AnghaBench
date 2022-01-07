
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
typedef TYPE_1__ RAsm ;


 int r_num_math (int ,char const*) ;

__attribute__((used)) static int getnum(RAsm *a, const char *s) {
 if (!s) {
  return 0;
 }
 if (*s == '$') {
  s++;
 }
 return r_num_math (a->num, s);
}
