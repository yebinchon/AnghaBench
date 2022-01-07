
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int typid; int value; } ;
struct TYPE_7__ {int len; int val; } ;
struct TYPE_9__ {TYPE_2__ datetime; TYPE_1__ string; int numeric; int boolean; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_3__ val; } ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonPathBool ;


 int ERROR ;
 int compareDatetime (int ,int ,int ,int ,int,int*) ;
 int compareNumeric (int ,int ) ;
 int compareStrings (int ,int ,int ,int ) ;
 int elog (int ,char*,int) ;
 int jpbFalse ;
 int jpbTrue ;
 int jpbUnknown ;






 int memcmp (int ,int ,int ) ;

__attribute__((used)) static JsonPathBool
compareItems(int32 op, JsonbValue *jb1, JsonbValue *jb2, bool useTz)
{
 int cmp;
 bool res;

 if (jb1->type != jb2->type)
 {
  if (jb1->type == 137 || jb2->type == 137)





   return op == 128 ? jpbTrue : jpbFalse;


  return jpbUnknown;
 }

 switch (jb1->type)
 {
  case 137:
   cmp = 0;
   break;
  case 139:
   cmp = jb1->val.boolean == jb2->val.boolean ? 0 :
    jb1->val.boolean ? 1 : -1;
   break;
  case 136:
   cmp = compareNumeric(jb1->val.numeric, jb2->val.numeric);
   break;
  case 134:
   if (op == 133)
    return jb1->val.string.len != jb2->val.string.len ||
     memcmp(jb1->val.string.val,
         jb2->val.string.val,
         jb1->val.string.len) ? jpbFalse : jpbTrue;

   cmp = compareStrings(jb1->val.string.val, jb1->val.string.len,
         jb2->val.string.val, jb2->val.string.len);
   break;
  case 138:
   {
    bool cast_error;

    cmp = compareDatetime(jb1->val.datetime.value,
           jb1->val.datetime.typid,
           jb2->val.datetime.value,
           jb2->val.datetime.typid,
           useTz,
           &cast_error);

    if (cast_error)
     return jpbUnknown;
   }
   break;

  case 140:
  case 141:
  case 135:
   return jpbUnknown;

  default:
   elog(ERROR, "invalid jsonb value type %d", jb1->type);
 }

 switch (op)
 {
  case 133:
   res = (cmp == 0);
   break;
  case 128:
   res = (cmp != 0);
   break;
  case 130:
   res = (cmp < 0);
   break;
  case 132:
   res = (cmp > 0);
   break;
  case 129:
   res = (cmp <= 0);
   break;
  case 131:
   res = (cmp >= 0);
   break;
  default:
   elog(ERROR, "unrecognized jsonpath operation: %d", op);
   return jpbUnknown;
 }

 return res ? jpbTrue : jpbFalse;
}
