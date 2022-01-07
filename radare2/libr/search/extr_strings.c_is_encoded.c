
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_encoded(int encoding, unsigned char c) {
 switch (encoding) {
 case 129:
  break;
 case 128:
  switch (c) {

  case 128:
  case 133:
  case 135:
  case 160:
  case 161:
  case 129:
  case 130:
  case 139:
  case 162:
  case 163:
  case 164:
  case 165:
  case 181:
  case 144:
  case 214:
  case 224:
  case 233:
   return 1;
  }
  break;
 }
 return 0;
}
