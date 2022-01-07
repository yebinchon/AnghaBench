
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int val; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_8__ {int boolean; TYPE_1__ string; int numeric; TYPE_2__ binary; } ;
struct TYPE_9__ {int type; TYPE_3__ val; } ;
typedef int SV ;
typedef TYPE_4__ JsonbValue ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int * Jsonb_to_SV (int ) ;
 int NumericGetDatum (int ) ;
 int PL_sv_no ;
 int PL_sv_yes ;
 int SvNV (int *) ;
 int * cstr2sv (char*) ;
 int dTHX ;
 int elog (int ,char*,int) ;





 int * newSV (int ) ;
 int * newSVnv (int ) ;
 int numeric_out ;
 int pfree (char*) ;
 char* pnstrdup (int ,int ) ;

__attribute__((used)) static SV *
JsonbValue_to_SV(JsonbValue *jbv)
{
 dTHX;

 switch (jbv->type)
 {
  case 132:
   return Jsonb_to_SV(jbv->val.binary.data);

  case 129:
   {
    char *str = DatumGetCString(DirectFunctionCall1(numeric_out,
                   NumericGetDatum(jbv->val.numeric)));
    SV *result = newSVnv(SvNV(cstr2sv(str)));

    pfree(str);
    return result;
   }

  case 128:
   {
    char *str = pnstrdup(jbv->val.string.val,
             jbv->val.string.len);
    SV *result = cstr2sv(str);

    pfree(str);
    return result;
   }

  case 131:
   return newSVnv(SvNV(jbv->val.boolean ? &PL_sv_yes : &PL_sv_no));

  case 130:
   return newSV(0);

  default:
   elog(ERROR, "unexpected jsonb value type: %d", jbv->type);
   return ((void*)0);
 }
}
