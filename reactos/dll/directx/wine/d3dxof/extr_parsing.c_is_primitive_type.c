
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline BOOL is_primitive_type(WORD token)
{
  BOOL ret;
  switch(token)
  {
    case 128:
    case 135:
    case 134:
    case 136:
    case 138:
    case 130:
    case 131:
    case 132:
    case 133:
    case 129:
    case 137:
      ret = TRUE;
      break;
    default:
      ret = FALSE;
      break;
  }
  return ret;
}
