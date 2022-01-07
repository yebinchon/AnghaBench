
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int typid; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_8__ {TYPE_2__ datetime; TYPE_1__ binary; } ;
struct TYPE_9__ {int type; TYPE_3__ val; } ;
typedef TYPE_4__ JsonbValue ;



 int ERROR ;
 char const* JsonbContainerTypeName (int ) ;




 int elog (int ,char*,int) ;
const char *
JsonbTypeName(JsonbValue *jbv)
{
 switch (jbv->type)
 {
  case 134:
   return JsonbContainerTypeName(jbv->val.binary.data);
  case 129:
   return "object";
  case 135:
   return "array";
  case 130:
   return "number";
  case 128:
   return "string";
  case 133:
   return "boolean";
  case 131:
   return "null";
  case 132:
   switch (jbv->val.datetime.typid)
   {
    case 140:
     return "date";
    case 139:
     return "time without time zone";
    case 136:
     return "time with time zone";
    case 138:
     return "timestamp without time zone";
    case 137:
     return "timestamp with time zone";
    default:
     elog(ERROR, "unrecognized jsonb value datetime type: %d",
       jbv->val.datetime.typid);
   }
   return "unknown";
  default:
   elog(ERROR, "unrecognized jsonb value type: %d", jbv->type);
   return "unknown";
 }
}
