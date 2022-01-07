
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int val; } ;
struct TYPE_6__ {int boolean; int numeric; TYPE_1__ string; } ;
struct TYPE_7__ {int type; TYPE_2__ val; } ;
typedef int StringInfo ;
typedef TYPE_3__ JsonbValue ;


 int DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int PointerGetDatum (int ) ;
 int appendBinaryStringInfo (int ,char*,int) ;
 int appendStringInfoString (int ,int ) ;
 int elog (int ,char*) ;
 int escape_json (int ,int ) ;




 int numeric_out ;
 int pnstrdup (int ,int ) ;

__attribute__((used)) static void
jsonb_put_escaped_value(StringInfo out, JsonbValue *scalarVal)
{
 switch (scalarVal->type)
 {
  case 130:
   appendBinaryStringInfo(out, "null", 4);
   break;
  case 128:
   escape_json(out, pnstrdup(scalarVal->val.string.val, scalarVal->val.string.len));
   break;
  case 129:
   appendStringInfoString(out,
           DatumGetCString(DirectFunctionCall1(numeric_out,
                    PointerGetDatum(scalarVal->val.numeric))));
   break;
  case 131:
   if (scalarVal->val.boolean)
    appendBinaryStringInfo(out, "true", 4);
   else
    appendBinaryStringInfo(out, "false", 5);
   break;
  default:
   elog(ERROR, "unknown jsonb scalar type");
 }
}
