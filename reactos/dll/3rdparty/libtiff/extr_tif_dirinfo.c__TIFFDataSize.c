
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFDataType ;
int
_TIFFDataSize(TIFFDataType type)
{
 switch (type)
 {
  case 142:
  case 134:
  case 143:
  case 128:
      return 1;
  case 133:
  case 129:
      return 2;
  case 137:
  case 132:
  case 140:
  case 139:
  case 135:
  case 130:
      return 4;
  case 141:
  case 136:
  case 131:
  case 138:
      return 8;
  default:
      return 0;
 }
}
