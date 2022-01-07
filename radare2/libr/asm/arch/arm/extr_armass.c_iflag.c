
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int st8 ;


 int r_str_case (char*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static st8 iflag(char *input) {
 st8 res = 0;
 ut8 i;
 r_str_case (input, 0);

 for (i = 0; i < strlen(input); i++) {
  switch (input[i]) {
  case 'a':
   res |= 0x4;
   break;
  case 'i':
   res |= 0x2;
   break;
  case 'f':
   res |= 0x1;
   break;
  default:
   return -1;
  }
 }
 return res;
}
