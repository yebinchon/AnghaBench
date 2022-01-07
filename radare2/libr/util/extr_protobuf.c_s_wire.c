
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
__attribute__((used)) static const char* s_wire(const ut8 byte) {
 switch (byte) {
 case 128:
  return "[VARINT]";
 case 132:
  return "[64_BIT]";
 case 130:
  return "[LEN_DELIM]";
 case 129:
  return "[START_GROUP]";
 case 131:
  return "[END_GROUP]";
 case 133:
  return "[32_BIT]";
 default:
  return "[UNKN]";
 }
}
