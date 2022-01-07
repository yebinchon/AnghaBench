
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sljit_u8 ;
typedef int sljit_s32 ;
__attribute__((used)) static sljit_u8 get_jump_code(sljit_s32 type)
{
 switch (type) {
 case 149:
 case 148:
  return 0x84 ;

 case 137:
 case 136:
  return 0x85 ;

 case 143:
 case 140:
  return 0x82 ;

 case 146:
 case 145:
  return 0x83 ;

 case 147:
 case 144:
  return 0x87 ;

 case 142:
 case 141:
  return 0x86 ;

 case 130:
  return 0x8c ;

 case 131:
  return 0x8d ;

 case 132:
  return 0x8f ;

 case 129:
  return 0x8e ;

 case 133:
 case 138:
  return 0x80 ;

 case 135:
 case 139:
  return 0x81 ;

 case 128:
  return 0x8a ;

 case 134:
  return 0x8b ;
 }
 return 0;
}
