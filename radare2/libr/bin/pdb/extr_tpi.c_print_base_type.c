
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EBASE_TYPES ;
__attribute__((used)) static void print_base_type(EBASE_TYPES base_type, char **name) {
 switch (base_type) {
 case 153:
  *name = "pointer to long";
  break;
 case 151:
  *name = "pointer to unsigned char";
  break;
 case 150:
  *name = "pointer to unsigned char";
  break;
 case 149:
  *name = "pointer to unsigned long";
  break;
 case 152:
  *name = "pointer to long";
  break;
 case 148:
  *name = "pointer to unsigned long long";
  break;
 case 147:
  *name = "pointer to unsigned short";
  break;
 case 146:
  *name = "pointer to void";
  break;
 case 144:
  *name = "pointer64 to void";
  break;
 case 143:
  *name = "long";
  break;
 case 142:
  *name = "long long";
  break;
 case 141:
  *name = "long";
  break;
 case 140:
  *name = "long long";
  break;
 case 139:
  *name = "unsigned char";
  break;
 case 138:
  *name = "float";
  break;
 case 137:
  *name = "double";
  break;
 case 136:
  *name = "long double";
  break;
 case 135:
  *name = "short";
  break;
 case 134:
  *name = "unsigned char";
  break;
 case 133:
  *name = "unsigned long";
  break;
 case 132:
  *name = "unsigned long";
  break;
 case 131:
  *name = "unsigned long long";
  break;
 case 130:
  *name = "unsigned short";
  break;
 case 128:
  *name = "wchar";
  break;
 case 129:
  *name = "void";
  break;
 case 145:
  *name = "pointer to wchar";
  break;
 default:
  *name = "unsupported base type";
  break;
 }
}
