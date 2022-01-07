
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int text ;
struct TYPE_10__ {int len; int data; } ;
struct TYPE_9__ {char* val; int len; } ;
struct TYPE_11__ {TYPE_2__ binary; int numeric; TYPE_1__ string; int boolean; } ;
struct TYPE_13__ {int type; TYPE_3__ val; } ;
struct TYPE_12__ {char* data; int len; } ;
typedef TYPE_4__ StringInfoData ;
typedef TYPE_5__ JsonbValue ;
typedef int Datum ;


 int DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int JsonbToCString (TYPE_4__*,int ,int ) ;
 int PointerGetDatum (int ) ;
 int * cstring_to_text (int ) ;
 int * cstring_to_text_with_len (char*,int) ;
 int elog (int ,char*,int) ;
 int initStringInfo (TYPE_4__*) ;





 int numeric_out ;

__attribute__((used)) static text *
JsonbValueAsText(JsonbValue *v)
{
 switch (v->type)
 {
  case 130:
   return ((void*)0);

  case 131:
   return v->val.boolean ?
    cstring_to_text_with_len("true", 4) :
    cstring_to_text_with_len("false", 5);

  case 128:
   return cstring_to_text_with_len(v->val.string.val,
           v->val.string.len);

  case 129:
   {
    Datum cstr;

    cstr = DirectFunctionCall1(numeric_out,
             PointerGetDatum(v->val.numeric));

    return cstring_to_text(DatumGetCString(cstr));
   }

  case 132:
   {
    StringInfoData jtext;

    initStringInfo(&jtext);
    (void) JsonbToCString(&jtext, v->val.binary.data,
           v->val.binary.len);

    return cstring_to_text_with_len(jtext.data, jtext.len);
   }

  default:
   elog(ERROR, "unrecognized jsonb type: %d", (int) v->type);
   return ((void*)0);
 }
}
