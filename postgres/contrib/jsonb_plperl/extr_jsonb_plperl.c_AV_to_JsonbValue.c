
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;
typedef scalar_t__ SSize_t ;
typedef int JsonbValue ;
typedef int JsonbParseState ;
typedef int AV ;


 int FALSE ;
 int SV_to_JsonbValue (int *,int **,int) ;
 int WJB_BEGIN_ARRAY ;
 int WJB_END_ARRAY ;
 int ** av_fetch (int *,scalar_t__,int ) ;
 scalar_t__ av_len (int *) ;
 int dTHX ;
 int * pushJsonbValue (int **,int ,int *) ;

__attribute__((used)) static JsonbValue *
AV_to_JsonbValue(AV *in, JsonbParseState **jsonb_state)
{
 dTHX;
 SSize_t pcount = av_len(in) + 1;
 SSize_t i;

 pushJsonbValue(jsonb_state, WJB_BEGIN_ARRAY, ((void*)0));

 for (i = 0; i < pcount; i++)
 {
  SV **value = av_fetch(in, i, FALSE);

  if (value)
   (void) SV_to_JsonbValue(*value, jsonb_state, 1);
 }

 return pushJsonbValue(jsonb_state, WJB_END_ARRAY, ((void*)0));
}
