
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int val; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {TYPE_2__ val; int type; } ;
typedef int SV ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbParseState ;
typedef int I32 ;
typedef int HV ;


 int SV_to_JsonbValue (int *,int **,int) ;
 int WJB_BEGIN_OBJECT ;
 int WJB_END_OBJECT ;
 int WJB_KEY ;
 int dTHX ;
 int hv_iterinit (int *) ;
 int * hv_iternextsv (int *,char**,int *) ;
 int jbvString ;
 int pnstrdup (char*,int ) ;
 TYPE_3__* pushJsonbValue (int **,int ,TYPE_3__*) ;

__attribute__((used)) static JsonbValue *
HV_to_JsonbValue(HV *obj, JsonbParseState **jsonb_state)
{
 dTHX;
 JsonbValue key;
 SV *val;
 char *kstr;
 I32 klen;

 key.type = jbvString;

 pushJsonbValue(jsonb_state, WJB_BEGIN_OBJECT, ((void*)0));

 (void) hv_iterinit(obj);

 while ((val = hv_iternextsv(obj, &kstr, &klen)))
 {
  key.val.string.val = pnstrdup(kstr, klen);
  key.val.string.len = klen;
  pushJsonbValue(jsonb_state, WJB_KEY, &key);
  (void) SV_to_JsonbValue(val, jsonb_state, 0);
 }

 return pushJsonbValue(jsonb_state, WJB_END_OBJECT, ((void*)0));
}
