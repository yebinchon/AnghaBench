
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int plperl_proc_ptr ;
typedef int plperl_proc_key ;
typedef int plperl_interp_desc ;
typedef int hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;


 int DefineCustomBoolVariable (char*,int ,int *,int *,int,int ,int ,int *,int *,int *) ;
 int DefineCustomStringVariable (char*,int ,int *,int *,int *,int ,int ,int *,int *,int *) ;
 int EmitWarningsOnPlaceholders (char*) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int PGC_SIGHUP ;
 int PGC_SUSET ;
 int PGC_USERSET ;
 int PLPERL_SET_OPMASK (int ) ;
 int TEXTDOMAIN ;
 int gettext_noop (char*) ;
 void* hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pg_bindtextdomain (int ) ;
 int plperl_held_interp ;
 int plperl_init_interp () ;
 void* plperl_interp_hash ;
 int plperl_on_init ;
 int plperl_on_plperl_init ;
 int plperl_on_plperlu_init ;
 int plperl_opmask ;
 void* plperl_proc_hash ;
 int plperl_use_strict ;

void
_PG_init(void)
{
 static bool inited = 0;
 HASHCTL hash_ctl;

 if (inited)
  return;




 pg_bindtextdomain(TEXTDOMAIN);




 DefineCustomBoolVariable("plperl.use_strict",
        gettext_noop("If true, trusted and untrusted Perl code will be compiled in strict mode."),
        ((void*)0),
        &plperl_use_strict,
        0,
        PGC_USERSET, 0,
        ((void*)0), ((void*)0), ((void*)0));







 DefineCustomStringVariable("plperl.on_init",
          gettext_noop("Perl initialization code to execute when a Perl interpreter is initialized."),
          ((void*)0),
          &plperl_on_init,
          ((void*)0),
          PGC_SIGHUP, 0,
          ((void*)0), ((void*)0), ((void*)0));
 DefineCustomStringVariable("plperl.on_plperl_init",
          gettext_noop("Perl initialization code to execute once when plperl is first used."),
          ((void*)0),
          &plperl_on_plperl_init,
          ((void*)0),
          PGC_SUSET, 0,
          ((void*)0), ((void*)0), ((void*)0));

 DefineCustomStringVariable("plperl.on_plperlu_init",
          gettext_noop("Perl initialization code to execute once when plperlu is first used."),
          ((void*)0),
          &plperl_on_plperlu_init,
          ((void*)0),
          PGC_SUSET, 0,
          ((void*)0), ((void*)0), ((void*)0));

 EmitWarningsOnPlaceholders("plperl");




 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(Oid);
 hash_ctl.entrysize = sizeof(plperl_interp_desc);
 plperl_interp_hash = hash_create("PL/Perl interpreters",
          8,
          &hash_ctl,
          HASH_ELEM | HASH_BLOBS);

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(plperl_proc_key);
 hash_ctl.entrysize = sizeof(plperl_proc_ptr);
 plperl_proc_hash = hash_create("PL/Perl procedures",
           32,
           &hash_ctl,
           HASH_ELEM | HASH_BLOBS);




 PLPERL_SET_OPMASK(plperl_opmask);




 plperl_held_interp = plperl_init_interp();

 inited = 1;
}
