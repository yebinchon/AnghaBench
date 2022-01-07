
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *get_w32_excep_name(unsigned long code) {
 char *desc;
 switch (code) {

 case 132:
  desc = "access violation";
  break;
 case 131:
  desc = "array bounds exceeded";
  break;
 case 130:
  desc = "illegal instruction";
  break;
 case 129:
  desc = "divide by zero";
  break;
 case 128:
  desc = "stack overflow";
  break;
 default:
  desc = "unknown";
 }

 return desc;
}
