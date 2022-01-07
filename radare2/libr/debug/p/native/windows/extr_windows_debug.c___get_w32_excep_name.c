
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
__attribute__((used)) static const char *__get_w32_excep_name(DWORD code) {
 switch (code) {

 case 132:
  return "access violation";
 case 131:
  return "array bounds exceeded";
 case 130:
  return "illegal instruction";
 case 129:
  return "divide by zero";
 case 128:
  return "stack overflow";
 default:
  return "unknown";
 }
}
