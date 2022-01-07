
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
__attribute__((used)) static const char* get_primitive_string(DWORD token)
{
  switch(token)
  {
    case 128:
      return "WORD";
    case 136:
      return "DWORD";
    case 135:
      return "FLOAT";
    case 137:
      return "DOUBLE";
    case 139:
      return "CHAR";
    case 131:
      return "UCHAR";
    case 132:
      return "SWORD";
    case 133:
      return "SDWORD";
    case 129:
      return "VOID";
    case 134:
      return "STRING";
    case 130:
      return "UNICODE";
    case 138:
      return "CSTRING ";
    default:
      break;
  }
  return ((void*)0);
}
