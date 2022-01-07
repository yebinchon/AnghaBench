
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fn_oid; } ;
struct TYPE_4__ {int proc; scalar_t__ elem_is_rowtype; TYPE_3__ transform_proc; int * elements; scalar_t__* nulls; } ;
typedef TYPE_1__ plperl_array_info ;
typedef int SV ;
typedef int Datum ;
typedef int AV ;


 scalar_t__ DatumGetPointer (int ) ;
 int FunctionCall1 (TYPE_3__*,int ) ;
 char* OutputFunctionCall (int *,int ) ;
 int av_push (int *,int *) ;
 int * cstr2sv (char*) ;
 int dTHX ;
 int * newAV () ;
 int * newRV_noinc (int *) ;
 int * newSV (int ) ;
 int * plperl_hash_from_datum (int ) ;

__attribute__((used)) static SV *
make_array_ref(plperl_array_info *info, int first, int last)
{
 dTHX;
 int i;
 AV *result = newAV();

 for (i = first; i < last; i++)
 {
  if (info->nulls[i])
  {




   av_push(result, newSV(0));
  }
  else
  {
   Datum itemvalue = info->elements[i];

   if (info->transform_proc.fn_oid)
    av_push(result, (SV *) DatumGetPointer(FunctionCall1(&info->transform_proc, itemvalue)));
   else if (info->elem_is_rowtype)

    av_push(result, plperl_hash_from_datum(itemvalue));
   else
   {
    char *val = OutputFunctionCall(&info->proc, itemvalue);

    av_push(result, cstr2sv(val));
   }
  }
 }
 return newRV_noinc((SV *) result);
}
