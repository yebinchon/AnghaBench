
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {double total; } ;
struct TYPE_21__ {int analyze; int buffers; int timing; int summary; TYPE_1__* str; scalar_t__ costs; int settings; scalar_t__ format; int verbose; } ;
struct TYPE_20__ {scalar_t__ instrument_options; TYPE_8__* totaltime; } ;
struct TYPE_19__ {int len; char* data; } ;
typedef TYPE_2__ QueryDesc ;
typedef TYPE_3__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_JSON ;
 int ExplainBeginOutput (TYPE_3__*) ;
 int ExplainEndOutput (TYPE_3__*) ;
 int ExplainPrintJITSummary (TYPE_3__*,TYPE_2__*) ;
 int ExplainPrintPlan (TYPE_3__*,TYPE_2__*) ;
 int ExplainPrintTriggers (TYPE_3__*,TYPE_2__*) ;
 int ExplainQueryText (TYPE_3__*,TYPE_2__*) ;
 int InstrEndLoop (TYPE_8__*) ;
 TYPE_3__* NewExplainState () ;
 scalar_t__ auto_explain_enabled () ;
 scalar_t__ auto_explain_log_analyze ;
 scalar_t__ auto_explain_log_buffers ;
 scalar_t__ auto_explain_log_format ;
 int auto_explain_log_level ;
 double auto_explain_log_min_duration ;
 int auto_explain_log_settings ;
 scalar_t__ auto_explain_log_timing ;
 scalar_t__ auto_explain_log_triggers ;
 int auto_explain_log_verbose ;
 int ereport (int ,int ) ;
 int errhidestmt (int) ;
 int errmsg (char*,double,char*) ;
 int pfree (char*) ;
 int prev_ExecutorEnd (TYPE_2__*) ;
 int standard_ExecutorEnd (TYPE_2__*) ;

__attribute__((used)) static void
explain_ExecutorEnd(QueryDesc *queryDesc)
{
 if (queryDesc->totaltime && auto_explain_enabled())
 {
  double msec;





  InstrEndLoop(queryDesc->totaltime);


  msec = queryDesc->totaltime->total * 1000.0;
  if (msec >= auto_explain_log_min_duration)
  {
   ExplainState *es = NewExplainState();

   es->analyze = (queryDesc->instrument_options && auto_explain_log_analyze);
   es->verbose = auto_explain_log_verbose;
   es->buffers = (es->analyze && auto_explain_log_buffers);
   es->timing = (es->analyze && auto_explain_log_timing);
   es->summary = es->analyze;
   es->format = auto_explain_log_format;
   es->settings = auto_explain_log_settings;

   ExplainBeginOutput(es);
   ExplainQueryText(es, queryDesc);
   ExplainPrintPlan(es, queryDesc);
   if (es->analyze && auto_explain_log_triggers)
    ExplainPrintTriggers(es, queryDesc);
   if (es->costs)
    ExplainPrintJITSummary(es, queryDesc);
   ExplainEndOutput(es);


   if (es->str->len > 0 && es->str->data[es->str->len - 1] == '\n')
    es->str->data[--es->str->len] = '\0';


   if (auto_explain_log_format == EXPLAIN_FORMAT_JSON)
   {
    es->str->data[0] = '{';
    es->str->data[es->str->len - 1] = '}';
   }







   ereport(auto_explain_log_level,
     (errmsg("duration: %.3f ms  plan:\n%s",
       msec, es->str->data),
      errhidestmt(1)));

   pfree(es->str->data);
  }
 }

 if (prev_ExecutorEnd)
  prev_ExecutorEnd(queryDesc);
 else
  standard_ExecutorEnd(queryDesc);
}
