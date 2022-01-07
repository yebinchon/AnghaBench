
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pltcl_proc_ptr ;
typedef int pltcl_proc_key ;
typedef int pltcl_interp_desc ;
typedef int hash_ctl ;
struct TYPE_6__ {int serviceModeHookProc; int alertNotifierProc; int finalizeNotifierProc; int initNotifierProc; int deleteFileHandlerProc; int createFileHandlerProc; int waitForEventProc; int setTimerProc; } ;
typedef TYPE_1__ Tcl_NotifierProcs ;
struct TYPE_7__ {int keysize; int entrysize; } ;
typedef int Oid ;
typedef TYPE_2__ HASHCTL ;


 int DefineCustomStringVariable (char*,int ,int *,int *,int *,int ,int ,int *,int *,int *) ;
 int ERROR ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int PGC_SUSET ;
 scalar_t__ TCL_ERROR ;
 int TEXTDOMAIN ;
 int * Tcl_CreateInterp () ;
 int Tcl_FindExecutable (char*) ;
 scalar_t__ Tcl_Init (int *) ;
 int Tcl_SetNotifier (TYPE_1__*) ;
 int elog (int ,char*) ;
 int gettext_noop (char*) ;
 void* hash_create (char*,int,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int pg_bindtextdomain (int ) ;
 int pltcl_AlertNotifier ;
 int pltcl_CreateFileHandler ;
 int pltcl_DeleteFileHandler ;
 int pltcl_FinalizeNotifier ;
 int pltcl_InitNotifier ;
 int pltcl_ServiceModeHook ;
 int pltcl_SetTimer ;
 int pltcl_WaitForEvent ;
 int * pltcl_hold_interp ;
 void* pltcl_interp_htab ;
 int pltcl_pm_init_done ;
 void* pltcl_proc_htab ;
 int pltcl_start_proc ;
 int pltclu_start_proc ;

void
_PG_init(void)
{
 Tcl_NotifierProcs notifier;
 HASHCTL hash_ctl;


 if (pltcl_pm_init_done)
  return;

 pg_bindtextdomain(TEXTDOMAIN);
 notifier.setTimerProc = pltcl_SetTimer;
 notifier.waitForEventProc = pltcl_WaitForEvent;
 notifier.createFileHandlerProc = pltcl_CreateFileHandler;
 notifier.deleteFileHandlerProc = pltcl_DeleteFileHandler;
 notifier.initNotifierProc = pltcl_InitNotifier;
 notifier.finalizeNotifierProc = pltcl_FinalizeNotifier;
 notifier.alertNotifierProc = pltcl_AlertNotifier;
 notifier.serviceModeHookProc = pltcl_ServiceModeHook;
 Tcl_SetNotifier(&notifier);





 if ((pltcl_hold_interp = Tcl_CreateInterp()) == ((void*)0))
  elog(ERROR, "could not create master Tcl interpreter");
 if (Tcl_Init(pltcl_hold_interp) == TCL_ERROR)
  elog(ERROR, "could not initialize master Tcl interpreter");




 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(Oid);
 hash_ctl.entrysize = sizeof(pltcl_interp_desc);
 pltcl_interp_htab = hash_create("PL/Tcl interpreters",
         8,
         &hash_ctl,
         HASH_ELEM | HASH_BLOBS);




 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(pltcl_proc_key);
 hash_ctl.entrysize = sizeof(pltcl_proc_ptr);
 pltcl_proc_htab = hash_create("PL/Tcl functions",
          100,
          &hash_ctl,
          HASH_ELEM | HASH_BLOBS);




 DefineCustomStringVariable("pltcl.start_proc",
          gettext_noop("PL/Tcl function to call once when pltcl is first used."),
          ((void*)0),
          &pltcl_start_proc,
          ((void*)0),
          PGC_SUSET, 0,
          ((void*)0), ((void*)0), ((void*)0));
 DefineCustomStringVariable("pltclu.start_proc",
          gettext_noop("PL/TclU function to call once when pltclu is first used."),
          ((void*)0),
          &pltclu_start_proc,
          ((void*)0),
          PGC_SUSET, 0,
          ((void*)0), ((void*)0), ((void*)0));

 pltcl_pm_init_done = 1;
}
