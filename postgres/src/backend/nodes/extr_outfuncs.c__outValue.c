
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; int ival; } ;
struct TYPE_5__ {int type; TYPE_1__ val; } ;
typedef TYPE_2__ Value ;
typedef int StringInfo ;


 int ERROR ;





 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int elog (int ,char*,int) ;
 int outToken (int ,char*) ;

__attribute__((used)) static void
_outValue(StringInfo str, const Value *value)
{
 switch (value->type)
 {
  case 130:
   appendStringInfo(str, "%d", value->val.ival);
   break;
  case 131:





   appendStringInfoString(str, value->val.str);
   break;
  case 128:





   appendStringInfoChar(str, '"');
   if (value->val.str[0] != '\0')
    outToken(str, value->val.str);
   appendStringInfoChar(str, '"');
   break;
  case 132:

   appendStringInfoString(str, value->val.str);
   break;
  case 129:

   appendStringInfoString(str, "NULL");
   break;
  default:
   elog(ERROR, "unrecognized node type: %d", (int) value->type);
   break;
 }
}
