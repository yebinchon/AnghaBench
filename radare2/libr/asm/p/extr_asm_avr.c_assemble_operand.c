
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ RAsm ;
 int getnum (TYPE_1__*,char const*) ;
 int parse_registerpair (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int assemble_operand(RAsm *a, const char *operand, int type, uint32_t *res) {
 int ret = -1;
 int temp;

 switch (type) {
 case 139:
  *res = parse_registerpair(operand);
  if (*res > 0) {
   ret = 0;
  }
  break;
 case 138:
  *res = parse_registerpair(operand);

  if (*res >= 12) {
   *res -= 12;
   ret = 0;
  }
  break;
 case 149:
 case 136:
  temp = getnum (a, operand);




  if(a->pc || (operand[0] != '+' && operand[0] != '-')) {


   temp -= a->pc + 2;
  }
  temp /= 2;
  if (temp >= -64 && temp <= 63) {
   ret = 0;
  }
  *res = temp;
  break;
 case 145:
 case 150:
 case 146:
 case 144:
 case 147:
  *res = getnum(a, operand);
  ret = 0;
  break;
 case 148:
  *res = getnum(a, operand);
  *res = ~(*res) & 0xFF;
  ret = 0;
  break;
 case 143:
 case 135:
 case 134:
 case 142:
 case 133:
 case 132:
 case 141:
 case 130:
 case 129:
  *res = 0;
  ret = 0;
  break;

 case 131:
 case 128:
  if (strlen(operand) > 2) {


   *res = getnum(a, operand + 2);
   ret = 0;
  }
  break;

 case 140:
  if (strlen(operand) > 1) {

   *res = getnum(a, operand + 1);
   if (*res <= 32) {
    ret = 0;
   }
  }
  break;
 case 137:
  if (strlen(operand) > 1) {

   *res = getnum(a, operand + 1);
   if (*res >= 16 && *res <= 32) {
    *res -= 16;
    ret = 0;
   }
  }
  break;
 default:
  ret = -1;
 }

 return ret;
}
