
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timestamp ;
struct ECPGgeneric_varchar {int* arr; } ;
struct ECPGgeneric_bytea {int len; } ;
struct TYPE_3__ {int sign; } ;
typedef TYPE_1__ numeric ;
typedef int interval ;
typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
struct TYPE_4__ {int sign; } ;
typedef TYPE_2__ decimal ;
 int const INT_MIN ;
 long long const LONG_LONG_MIN ;
 long const LONG_MIN ;
 int NUMERIC_NULL ;
 short const SHRT_MIN ;
 int _check (void const*,int) ;

bool
ECPGis_noind_null(enum ECPGttype type, const void *ptr)
{
 switch (type)
 {
  case 146:
  case 133:
  case 135:
   if (*((const char *) ptr) == '\0')
    return 1;
   break;
  case 136:
  case 129:
   if (*((const short int *) ptr) == SHRT_MIN)
    return 1;
   break;
  case 141:
  case 132:
   if (*((const int *) ptr) == INT_MIN)
    return 1;
   break;
  case 139:
  case 131:
  case 145:
   if (*((const long *) ptr) == LONG_MIN)
    return 1;
   break;
  case 138:
  case 130:
   if (*((const long long *) ptr) == LONG_LONG_MIN)
    return 1;
   break;
  case 142:
   return _check(ptr, sizeof(float));
   break;
  case 143:
   return _check(ptr, sizeof(double));
   break;
  case 128:
   if (*(((const struct ECPGgeneric_varchar *) ptr)->arr) == 0x00)
    return 1;
   break;
  case 147:
   if (((const struct ECPGgeneric_bytea *) ptr)->len == 0)
    return 1;
   break;
  case 144:
   if (((const decimal *) ptr)->sign == NUMERIC_NULL)
    return 1;
   break;
  case 137:
   if (((const numeric *) ptr)->sign == NUMERIC_NULL)
    return 1;
   break;
  case 140:
   return _check(ptr, sizeof(interval));
   break;
  case 134:
   return _check(ptr, sizeof(timestamp));
   break;
  default:
   break;
 }

 return 0;
}
