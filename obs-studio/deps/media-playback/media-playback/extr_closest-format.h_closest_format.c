
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
__attribute__((used)) static enum AVPixelFormat closest_format(enum AVPixelFormat fmt)
{
 switch (fmt) {
 case 129:
  return 129;
 case 135:
  return 135;

 case 146:
 case 130:
 case 161:
 case 138:
 case 139:
 case 145:
 case 144:
 case 137:
 case 136:
 case 128:
 case 143:
 case 142:
 case 141:
 case 140:
  return 161;

 case 164:
 case 163:
  return 164;

 case 157:
 case 131:
 case 158:
 case 160:
 case 159:
 case 149:
 case 150:
 case 148:
 case 147:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
  return 157;

 case 134:
  return 134;

 case 133:
  return 133;

 case 132:
  return 132;

 case 162:
 case 165:
 case 166:
  return fmt;

 default:
  break;
 }

 return 165;
}
