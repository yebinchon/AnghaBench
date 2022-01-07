
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int timestamp ;
struct ECPGgeneric_varchar {int* arr; int len; } ;
struct ECPGgeneric_bytea {int len; } ;
struct TYPE_3__ {void* sign; } ;
typedef TYPE_1__ numeric ;
typedef int interval ;
typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
struct TYPE_4__ {void* sign; } ;
typedef TYPE_2__ decimal ;
 int INT_MIN ;
 long long LONG_LONG_MIN ;
 long LONG_MIN ;
 void* NUMERIC_NULL ;
 short SHRT_MIN ;
 int memset (char*,int,int) ;

void
ECPGset_noind_null(enum ECPGttype type, void *ptr)
{
 switch (type)
 {
  case 146:
  case 133:
  case 135:
   *((char *) ptr) = '\0';
   break;
  case 136:
  case 129:
   *((short int *) ptr) = SHRT_MIN;
   break;
  case 141:
  case 132:
   *((int *) ptr) = INT_MIN;
   break;
  case 139:
  case 131:
  case 145:
   *((long *) ptr) = LONG_MIN;
   break;
  case 138:
  case 130:
   *((long long *) ptr) = LONG_LONG_MIN;
   break;
  case 142:
   memset((char *) ptr, 0xff, sizeof(float));
   break;
  case 143:
   memset((char *) ptr, 0xff, sizeof(double));
   break;
  case 128:
   *(((struct ECPGgeneric_varchar *) ptr)->arr) = 0x00;
   ((struct ECPGgeneric_varchar *) ptr)->len = 0;
   break;
  case 147:
   ((struct ECPGgeneric_bytea *) ptr)->len = 0;
   break;
  case 144:
   memset((char *) ptr, 0, sizeof(decimal));
   ((decimal *) ptr)->sign = NUMERIC_NULL;
   break;
  case 137:
   memset((char *) ptr, 0, sizeof(numeric));
   ((numeric *) ptr)->sign = NUMERIC_NULL;
   break;
  case 140:
   memset((char *) ptr, 0xff, sizeof(interval));
   break;
  case 134:
   memset((char *) ptr, 0xff, sizeof(timestamp));
   break;
  default:
   break;
 }
}
