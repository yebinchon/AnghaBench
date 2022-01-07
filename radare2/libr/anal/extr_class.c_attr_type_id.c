
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalClassAttrType ;






__attribute__((used)) static const char *attr_type_id(RAnalClassAttrType attr_type) {
 switch (attr_type) {
 case 129:
  return "method";
 case 128:
  return "vtable";
 case 130:
  return "base";
 default:
  return ((void*)0);
 }
}
