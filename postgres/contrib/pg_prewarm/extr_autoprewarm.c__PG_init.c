
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AutoPrewarmSharedState ;


 int DefineCustomBoolVariable (char*,char*,int *,scalar_t__*,int,int ,int ,int *,int *,int *) ;
 int DefineCustomIntVariable (char*,char*,char*,int *,int,int ,int,int ,int ,int *,int *,int *) ;
 int EmitWarningsOnPlaceholders (char*) ;
 int GUC_UNIT_S ;
 int INT_MAX ;
 int MAXALIGN (int) ;
 int PGC_POSTMASTER ;
 int PGC_SIGHUP ;
 int RequestAddinShmemSpace (int ) ;
 int apw_start_master_worker () ;
 scalar_t__ autoprewarm ;
 int autoprewarm_interval ;
 int process_shared_preload_libraries_in_progress ;

void
_PG_init(void)
{
 DefineCustomIntVariable("pg_prewarm.autoprewarm_interval",
       "Sets the interval between dumps of shared buffers",
       "If set to zero, time-based dumping is disabled.",
       &autoprewarm_interval,
       300,
       0, INT_MAX / 1000,
       PGC_SIGHUP,
       GUC_UNIT_S,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 if (!process_shared_preload_libraries_in_progress)
  return;


 DefineCustomBoolVariable("pg_prewarm.autoprewarm",
        "Starts the autoprewarm worker.",
        ((void*)0),
        &autoprewarm,
        1,
        PGC_POSTMASTER,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 EmitWarningsOnPlaceholders("pg_prewarm");

 RequestAddinShmemSpace(MAXALIGN(sizeof(AutoPrewarmSharedState)));


 if (autoprewarm)
  apw_start_master_worker();
}
