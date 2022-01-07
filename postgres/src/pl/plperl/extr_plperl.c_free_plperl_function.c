
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fn_refcount; int fn_cxt; scalar_t__ reference; int * interp; } ;
typedef TYPE_1__ plperl_proc_desc ;
typedef int plperl_interp_desc ;


 int Assert (int) ;
 int MemoryContextDelete (int ) ;
 int SvREFCNT_dec_current (scalar_t__) ;
 int activate_interpreter (int *) ;
 int * plperl_active_interp ;

__attribute__((used)) static void
free_plperl_function(plperl_proc_desc *prodesc)
{
 Assert(prodesc->fn_refcount == 0);

 if (prodesc->reference)
 {
  plperl_interp_desc *oldinterp = plperl_active_interp;

  activate_interpreter(prodesc->interp);
  SvREFCNT_dec_current(prodesc->reference);
  activate_interpreter(oldinterp);
 }

 MemoryContextDelete(prodesc->fn_cxt);
}
