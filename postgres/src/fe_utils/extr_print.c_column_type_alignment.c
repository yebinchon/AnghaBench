
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
char
column_type_alignment(Oid ftype)
{
 char align;

 switch (ftype)
 {
  case 133:
  case 132:
  case 131:
  case 135:
  case 134:
  case 130:
  case 129:
  case 128:
  case 136:
  case 137:
   align = 'r';
   break;
  default:
   align = 'l';
   break;
 }
 return align;
}
