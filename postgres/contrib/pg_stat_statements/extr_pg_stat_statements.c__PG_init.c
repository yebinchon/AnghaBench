
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefineCustomBoolVariable (char*,char*,int *,int *,int,int ,int ,int *,int *,int *) ;
 int DefineCustomEnumVariable (char*,char*,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int DefineCustomIntVariable (char*,char*,int *,int *,int,int,int ,int ,int ,int *,int *,int *) ;
 int EmitWarningsOnPlaceholders (char*) ;
 int ExecutorEnd_hook ;
 int ExecutorFinish_hook ;
 int ExecutorRun_hook ;
 int ExecutorStart_hook ;
 int INT_MAX ;
 int PGC_POSTMASTER ;
 int PGC_SIGHUP ;
 int PGC_SUSET ;
 int PGSS_TRACK_TOP ;
 int ProcessUtility_hook ;
 int RequestAddinShmemSpace (int ) ;
 int RequestNamedLWLockTranche (char*,int) ;
 int pgss_ExecutorEnd ;
 int pgss_ExecutorFinish ;
 int pgss_ExecutorRun ;
 int pgss_ExecutorStart ;
 int pgss_ProcessUtility ;
 int pgss_max ;
 int pgss_memsize () ;
 int pgss_post_parse_analyze ;
 int pgss_save ;
 int pgss_shmem_startup ;
 int pgss_track ;
 int pgss_track_utility ;
 int post_parse_analyze_hook ;
 int prev_ExecutorEnd ;
 int prev_ExecutorFinish ;
 int prev_ExecutorRun ;
 int prev_ExecutorStart ;
 int prev_ProcessUtility ;
 int prev_post_parse_analyze_hook ;
 int prev_shmem_startup_hook ;
 int process_shared_preload_libraries_in_progress ;
 int shmem_startup_hook ;
 int track_options ;

void
_PG_init(void)
{
 if (!process_shared_preload_libraries_in_progress)
  return;




 DefineCustomIntVariable("pg_stat_statements.max",
       "Sets the maximum number of statements tracked by pg_stat_statements.",
       ((void*)0),
       &pgss_max,
       5000,
       100,
       INT_MAX,
       PGC_POSTMASTER,
       0,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 DefineCustomEnumVariable("pg_stat_statements.track",
        "Selects which statements are tracked by pg_stat_statements.",
        ((void*)0),
        &pgss_track,
        PGSS_TRACK_TOP,
        track_options,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("pg_stat_statements.track_utility",
        "Selects whether utility commands are tracked by pg_stat_statements.",
        ((void*)0),
        &pgss_track_utility,
        1,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("pg_stat_statements.save",
        "Save pg_stat_statements statistics across server shutdowns.",
        ((void*)0),
        &pgss_save,
        1,
        PGC_SIGHUP,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 EmitWarningsOnPlaceholders("pg_stat_statements");






 RequestAddinShmemSpace(pgss_memsize());
 RequestNamedLWLockTranche("pg_stat_statements", 1);




 prev_shmem_startup_hook = shmem_startup_hook;
 shmem_startup_hook = pgss_shmem_startup;
 prev_post_parse_analyze_hook = post_parse_analyze_hook;
 post_parse_analyze_hook = pgss_post_parse_analyze;
 prev_ExecutorStart = ExecutorStart_hook;
 ExecutorStart_hook = pgss_ExecutorStart;
 prev_ExecutorRun = ExecutorRun_hook;
 ExecutorRun_hook = pgss_ExecutorRun;
 prev_ExecutorFinish = ExecutorFinish_hook;
 ExecutorFinish_hook = pgss_ExecutorFinish;
 prev_ExecutorEnd = ExecutorEnd_hook;
 ExecutorEnd_hook = pgss_ExecutorEnd;
 prev_ProcessUtility = ProcessUtility_hook;
 ProcessUtility_hook = pgss_ProcessUtility;
}
