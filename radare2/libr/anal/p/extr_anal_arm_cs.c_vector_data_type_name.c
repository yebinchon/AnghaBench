
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_vectordata_type ;
__attribute__((used)) static const char *vector_data_type_name(arm_vectordata_type type) {
 switch (type) {
 case 145:
  return "i8";
 case 148:
  return "i16";
 case 147:
  return "i32";
 case 146:
  return "i64";
 case 136:
  return "s8";
 case 143:
  return "s16";
 case 140:
  return "s32";
 case 137:
  return "s64";
 case 128:
  return "u8";
 case 135:
  return "u16";
 case 132:
  return "u32";
 case 129:
  return "u64";
 case 144:
  return "p8";
 case 162:
  return "f32";
 case 155:
  return "f64";
 case 163:
  return "f16.f64";
 case 154:
  return "f64.f16";
 case 161:
  return "f32.f16";
 case 164:
  return "f16.f32";
 case 153:
  return "f64.f32";
 case 160:
  return "f32.f64";
 case 139:
  return "s32.f32";
 case 131:
  return "u32.f32";
 case 158:
  return "f32.s32";
 case 156:
  return "f32.u32";
 case 152:
  return "f64.s16";
 case 159:
  return "f32.s16";
 case 151:
  return "f64.s32";
 case 141:
  return "s16.f64";
 case 142:
  return "s16.f64";
 case 138:
  return "s32.f64";
 case 133:
  return "u16.f64";
 case 134:
  return "u16.f32";
 case 130:
  return "u32.f64";
 case 150:
  return "f64.u16";
 case 157:
  return "f32.u16";
 case 149:
  return "f64.u32";
 default:
  return "";
 }
}
