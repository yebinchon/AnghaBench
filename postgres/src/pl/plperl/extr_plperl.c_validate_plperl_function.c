
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* proc_ptr; } ;
typedef TYPE_1__ plperl_proc_ptr ;
struct TYPE_8__ {scalar_t__ fn_xmin; int fn_tid; } ;
typedef TYPE_2__ plperl_proc_desc ;
struct TYPE_9__ {int t_self; int t_data; } ;
typedef TYPE_3__* HeapTuple ;


 scalar_t__ HeapTupleHeaderGetRawXmin (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int decrement_prodesc_refcount (TYPE_2__*) ;

__attribute__((used)) static bool
validate_plperl_function(plperl_proc_ptr *proc_ptr, HeapTuple procTup)
{
 if (proc_ptr && proc_ptr->proc_ptr)
 {
  plperl_proc_desc *prodesc = proc_ptr->proc_ptr;
  bool uptodate;






  uptodate = (prodesc->fn_xmin == HeapTupleHeaderGetRawXmin(procTup->t_data) &&
     ItemPointerEquals(&prodesc->fn_tid, &procTup->t_self));

  if (uptodate)
   return 1;


  proc_ptr->proc_ptr = ((void*)0);

  decrement_prodesc_refcount(prodesc);
 }

 return 0;
}
