
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ndims; int* nelems; } ;
typedef TYPE_1__ plperl_array_info ;
typedef int SV ;
typedef int AV ;


 int Assert (int) ;
 int av_push (int *,int *) ;
 int check_stack_depth () ;
 int dTHX ;
 int * make_array_ref (TYPE_1__*,int,int) ;
 int * newAV () ;
 int * newRV_noinc (int *) ;

__attribute__((used)) static SV *
split_array(plperl_array_info *info, int first, int last, int nest)
{
 dTHX;
 int i;
 AV *result;


 Assert(info->ndims > 0);


 check_stack_depth();




 if (nest >= info->ndims - 1)
  return make_array_ref(info, first, last);

 result = newAV();
 for (i = first; i < last; i += info->nelems[nest + 1])
 {

  SV *ref = split_array(info, i, i + info->nelems[nest + 1], nest + 1);

  av_push(result, ref);
 }
 return newRV_noinc((SV *) result);
}
