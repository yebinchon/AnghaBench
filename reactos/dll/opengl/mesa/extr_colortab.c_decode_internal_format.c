
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
__attribute__((used)) static GLint decode_internal_format( GLint format )
{
   switch (format) {
      case 165:
      case 162:
      case 161:
      case 164:
      case 163:
         return 165;
      case 1:
      case 155:
      case 149:
      case 146:
      case 154:
      case 151:
         return 155;
      case 2:
      case 144:
      case 148:
      case 147:
      case 145:
      case 152:
      case 153:
      case 150:
         return 144;
      case 160:
      case 157:
      case 156:
      case 159:
      case 158:
         return 160;
      case 3:
      case 142:
      case 143:
      case 137:
      case 136:
      case 134:
      case 141:
      case 139:
      case 138:
         return 142;
      case 4:
      case 133:
      case 130:
      case 129:
      case 135:
      case 128:
      case 140:
      case 132:
      case 131:
         return 133;
      default:
         return -1;
   }
}
