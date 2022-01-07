
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ interp; } ;
typedef TYPE_1__ plperl_interp_desc ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int DEBUG3 ;
 int activate_interpreter (TYPE_1__*) ;
 int elog (int ,char*) ;
 int hash_seq_init (int *,int ) ;
 TYPE_1__* hash_seq_search (int *) ;
 int plperl_destroy_interp (scalar_t__*) ;
 int plperl_ending ;
 scalar_t__ plperl_held_interp ;
 int plperl_interp_hash ;

__attribute__((used)) static void
plperl_fini(int code, Datum arg)
{
 HASH_SEQ_STATUS hash_seq;
 plperl_interp_desc *interp_desc;

 elog(DEBUG3, "plperl_fini");







 plperl_ending = 1;


 if (code)
 {
  elog(DEBUG3, "plperl_fini: skipped");
  return;
 }


 plperl_destroy_interp(&plperl_held_interp);


 hash_seq_init(&hash_seq, plperl_interp_hash);
 while ((interp_desc = hash_seq_search(&hash_seq)) != ((void*)0))
 {
  if (interp_desc->interp)
  {
   activate_interpreter(interp_desc);
   plperl_destroy_interp(&interp_desc->interp);
  }
 }

 elog(DEBUG3, "plperl_fini: done");
}
