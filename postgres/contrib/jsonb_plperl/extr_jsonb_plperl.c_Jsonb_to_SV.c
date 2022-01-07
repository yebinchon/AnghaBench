
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int len; int val; } ;
struct TYPE_7__ {int rawScalar; } ;
struct TYPE_9__ {TYPE_2__ string; TYPE_1__ array; } ;
struct TYPE_10__ {TYPE_3__ val; } ;
typedef int SV ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef int JsonbContainer ;
typedef int HV ;
typedef int AV ;


 int ERROR ;
 int * JsonbIteratorInit (int *) ;
 int JsonbIteratorNext (int **,TYPE_4__*,int) ;
 int * JsonbValue_to_SV (TYPE_4__*) ;


 int WJB_DONE ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int WJB_KEY ;
 int WJB_VALUE ;
 int av_push (int *,int *) ;
 int dTHX ;
 int elog (int ,char*,int) ;
 int hv_store (int *,int ,int ,int *,int ) ;
 int * newAV () ;
 int * newHV () ;
 int * newRV (int *) ;

__attribute__((used)) static SV *
Jsonb_to_SV(JsonbContainer *jsonb)
{
 dTHX;
 JsonbValue v;
 JsonbIterator *it;
 JsonbIteratorToken r;

 it = JsonbIteratorInit(jsonb);
 r = JsonbIteratorNext(&it, &v, 1);

 switch (r)
 {
  case 129:
   if (v.val.array.rawScalar)
   {
    JsonbValue tmp;

    if ((r = JsonbIteratorNext(&it, &v, 1)) != WJB_ELEM ||
     (r = JsonbIteratorNext(&it, &tmp, 1)) != WJB_END_ARRAY ||
     (r = JsonbIteratorNext(&it, &tmp, 1)) != WJB_DONE)
     elog(ERROR, "unexpected jsonb token: %d", r);

    return JsonbValue_to_SV(&v);
   }
   else
   {
    AV *av = newAV();

    while ((r = JsonbIteratorNext(&it, &v, 1)) != WJB_DONE)
    {
     if (r == WJB_ELEM)
      av_push(av, JsonbValue_to_SV(&v));
    }

    return newRV((SV *) av);
   }

  case 128:
   {
    HV *hv = newHV();

    while ((r = JsonbIteratorNext(&it, &v, 1)) != WJB_DONE)
    {
     if (r == WJB_KEY)
     {

      JsonbValue val;

      if (JsonbIteratorNext(&it, &val, 1) == WJB_VALUE)
      {
       SV *value = JsonbValue_to_SV(&val);

       (void) hv_store(hv,
           v.val.string.val, v.val.string.len,
           value, 0);
      }
     }
    }

    return newRV((SV *) hv);
   }

  default:
   elog(ERROR, "unexpected jsonb token: %d", r);
   return ((void*)0);
 }
}
