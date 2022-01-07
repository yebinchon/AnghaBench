
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char text ;
typedef int StringInfo ;
typedef int Oid ;
typedef int JsonTypeCategory ;
typedef int Datum ;


 int Assert (int) ;
 int DATEOID ;
 int DatumGetBool (int ) ;
 char* DatumGetTextPP (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int IsValidJsonNumber (char*,int ) ;
 int JsonEncodeDateTime (char*,int ,int ,int *) ;
 int MAXDATELEN ;
 int OidFunctionCall1 (int ,int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int TIMESTAMPOID ;
 int TIMESTAMPTZOID ;
 int appendStringInfo (int ,char*,char*) ;
 int appendStringInfoString (int ,char*) ;
 int array_to_json_internal (int ,int ,int) ;
 int check_stack_depth () ;
 int composite_to_json (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int escape_json (int ,char*) ;
 int pfree (char*) ;
 int strlen (char*) ;
 char* text_to_cstring (char*) ;

__attribute__((used)) static void
datum_to_json(Datum val, bool is_null, StringInfo result,
     JsonTypeCategory tcategory, Oid outfuncoid,
     bool key_scalar)
{
 char *outputstr;
 text *jsontext;

 check_stack_depth();


 Assert(!(key_scalar && is_null));

 if (is_null)
 {
  appendStringInfoString(result, "null");
  return;
 }

 if (key_scalar &&
  (tcategory == 136 ||
   tcategory == 133 ||
   tcategory == 131 ||
   tcategory == 134))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("key value must be scalar, not array, composite, or json")));

 switch (tcategory)
 {
  case 136:
   array_to_json_internal(val, result, 0);
   break;
  case 133:
   composite_to_json(val, result, 0);
   break;
  case 135:
   outputstr = DatumGetBool(val) ? "true" : "false";
   if (key_scalar)
    escape_json(result, outputstr);
   else
    appendStringInfoString(result, outputstr);
   break;
  case 130:
   outputstr = OidOutputFunctionCall(outfuncoid, val);





   if (!key_scalar && IsValidJsonNumber(outputstr, strlen(outputstr)))
    appendStringInfoString(result, outputstr);
   else
    escape_json(result, outputstr);
   pfree(outputstr);
   break;
  case 132:
   {
    char buf[MAXDATELEN + 1];

    JsonEncodeDateTime(buf, val, DATEOID, ((void*)0));
    appendStringInfo(result, "\"%s\"", buf);
   }
   break;
  case 129:
   {
    char buf[MAXDATELEN + 1];

    JsonEncodeDateTime(buf, val, TIMESTAMPOID, ((void*)0));
    appendStringInfo(result, "\"%s\"", buf);
   }
   break;
  case 128:
   {
    char buf[MAXDATELEN + 1];

    JsonEncodeDateTime(buf, val, TIMESTAMPTZOID, ((void*)0));
    appendStringInfo(result, "\"%s\"", buf);
   }
   break;
  case 131:

   outputstr = OidOutputFunctionCall(outfuncoid, val);
   appendStringInfoString(result, outputstr);
   pfree(outputstr);
   break;
  case 134:

   jsontext = DatumGetTextPP(OidFunctionCall1(outfuncoid, val));
   outputstr = text_to_cstring(jsontext);
   appendStringInfoString(result, outputstr);
   pfree(outputstr);
   pfree(jsontext);
   break;
  default:
   outputstr = OidOutputFunctionCall(outfuncoid, val);
   escape_json(result, outputstr);
   pfree(outputstr);
   break;
 }
}
