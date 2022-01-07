
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefineCustomBoolVariable (char*,char*,char*,int *,int,int ,int ,int *,int *,int *) ;
 int DefineCustomEnumVariable (char*,char*,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int DefineCustomIntVariable (char*,char*,char*,int *,int,int,int ,int ,int ,int *,int *,int *) ;
 int DefineCustomRealVariable (char*,char*,int *,int *,double,double,double,int ,int ,int *,int *,int *) ;
 int EXPLAIN_FORMAT_TEXT ;
 int EmitWarningsOnPlaceholders (char*) ;
 int ExecutorEnd_hook ;
 int ExecutorFinish_hook ;
 int ExecutorRun_hook ;
 int ExecutorStart_hook ;
 int GUC_UNIT_MS ;
 int INT_MAX ;
 int LOG ;
 int PGC_SUSET ;
 int auto_explain_log_analyze ;
 int auto_explain_log_buffers ;
 int auto_explain_log_format ;
 int auto_explain_log_level ;
 int auto_explain_log_min_duration ;
 int auto_explain_log_nested_statements ;
 int auto_explain_log_settings ;
 int auto_explain_log_timing ;
 int auto_explain_log_triggers ;
 int auto_explain_log_verbose ;
 int auto_explain_sample_rate ;
 int explain_ExecutorEnd ;
 int explain_ExecutorFinish ;
 int explain_ExecutorRun ;
 int explain_ExecutorStart ;
 int format_options ;
 int loglevel_options ;
 int prev_ExecutorEnd ;
 int prev_ExecutorFinish ;
 int prev_ExecutorRun ;
 int prev_ExecutorStart ;

void
_PG_init(void)
{

 DefineCustomIntVariable("auto_explain.log_min_duration",
       "Sets the minimum execution time above which plans will be logged.",
       "Zero prints all plans. -1 turns this feature off.",
       &auto_explain_log_min_duration,
       -1,
       -1, INT_MAX,
       PGC_SUSET,
       GUC_UNIT_MS,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_analyze",
        "Use EXPLAIN ANALYZE for plan logging.",
        ((void*)0),
        &auto_explain_log_analyze,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_settings",
        "Log modified configuration parameters affecting query planning.",
        ((void*)0),
        &auto_explain_log_settings,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_verbose",
        "Use EXPLAIN VERBOSE for plan logging.",
        ((void*)0),
        &auto_explain_log_verbose,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_buffers",
        "Log buffers usage.",
        ((void*)0),
        &auto_explain_log_buffers,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_triggers",
        "Include trigger statistics in plans.",
        "This has no effect unless log_analyze is also set.",
        &auto_explain_log_triggers,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomEnumVariable("auto_explain.log_format",
        "EXPLAIN format to be used for plan logging.",
        ((void*)0),
        &auto_explain_log_format,
        EXPLAIN_FORMAT_TEXT,
        format_options,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomEnumVariable("auto_explain.log_level",
        "Log level for the plan.",
        ((void*)0),
        &auto_explain_log_level,
        LOG,
        loglevel_options,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_nested_statements",
        "Log nested statements.",
        ((void*)0),
        &auto_explain_log_nested_statements,
        0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomBoolVariable("auto_explain.log_timing",
        "Collect timing data, not just row counts.",
        ((void*)0),
        &auto_explain_log_timing,
        1,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 DefineCustomRealVariable("auto_explain.sample_rate",
        "Fraction of queries to process.",
        ((void*)0),
        &auto_explain_sample_rate,
        1.0,
        0.0,
        1.0,
        PGC_SUSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));

 EmitWarningsOnPlaceholders("auto_explain");


 prev_ExecutorStart = ExecutorStart_hook;
 ExecutorStart_hook = explain_ExecutorStart;
 prev_ExecutorRun = ExecutorRun_hook;
 ExecutorRun_hook = explain_ExecutorRun;
 prev_ExecutorFinish = ExecutorFinish_hook;
 ExecutorFinish_hook = explain_ExecutorFinish;
 prev_ExecutorEnd = ExecutorEnd_hook;
 ExecutorEnd_hook = explain_ExecutorEnd;
}
