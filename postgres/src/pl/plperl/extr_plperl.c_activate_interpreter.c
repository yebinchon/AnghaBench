
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; int interp; } ;
typedef TYPE_1__ plperl_interp_desc ;


 int Assert (int ) ;
 int OidIsValid (int ) ;
 int PERL_SET_CONTEXT (int ) ;
 TYPE_1__* plperl_active_interp ;
 int set_interp_require (int ) ;

__attribute__((used)) static void
activate_interpreter(plperl_interp_desc *interp_desc)
{
 if (interp_desc && plperl_active_interp != interp_desc)
 {
  Assert(interp_desc->interp);
  PERL_SET_CONTEXT(interp_desc->interp);

  set_interp_require(OidIsValid(interp_desc->user_id));
  plperl_active_interp = interp_desc;
 }
}
