
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_11__ {scalar_t__ format; int indent; scalar_t__ timing; scalar_t__ analyze; int str; } ;
struct TYPE_10__ {int created_functions; int emission_counter; int optimization_counter; int inlining_counter; int generation_counter; } ;
typedef TYPE_1__ JitInstrumentation ;
typedef TYPE_2__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainCloseGroup (char*,char*,int,TYPE_2__*) ;
 int ExplainOpenGroup (char*,char*,int,TYPE_2__*) ;
 int ExplainPropertyBool (char*,int,TYPE_2__*) ;
 int ExplainPropertyFloat (char*,char*,double,int,TYPE_2__*) ;
 int ExplainPropertyInteger (char*,int *,int,TYPE_2__*) ;
 int INSTR_TIME_ADD (int ,int ) ;
 double INSTR_TIME_GET_DOUBLE (int ) ;
 int INSTR_TIME_SET_ZERO (int ) ;
 int PGJIT_DEFORM ;
 int PGJIT_EXPR ;
 int PGJIT_INLINE ;
 int PGJIT_OPT3 ;
 int appendStringInfo (int ,char*,...) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char*) ;

void
ExplainPrintJIT(ExplainState *es, int jit_flags,
    JitInstrumentation *ji, int worker_num)
{
 instr_time total_time;
 bool for_workers = (worker_num >= 0);


 if (!ji || ji->created_functions == 0)
  return;


 INSTR_TIME_SET_ZERO(total_time);
 INSTR_TIME_ADD(total_time, ji->generation_counter);
 INSTR_TIME_ADD(total_time, ji->inlining_counter);
 INSTR_TIME_ADD(total_time, ji->optimization_counter);
 INSTR_TIME_ADD(total_time, ji->emission_counter);

 ExplainOpenGroup("JIT", "JIT", 1, es);


 if (es->format == EXPLAIN_FORMAT_TEXT)
 {
  appendStringInfoSpaces(es->str, es->indent * 2);
  if (for_workers)
   appendStringInfo(es->str, "JIT for worker %u:\n", worker_num);
  else
   appendStringInfoString(es->str, "JIT:\n");
  es->indent += 1;

  ExplainPropertyInteger("Functions", ((void*)0), ji->created_functions, es);

  appendStringInfoSpaces(es->str, es->indent * 2);
  appendStringInfo(es->str, "Options: %s %s, %s %s, %s %s, %s %s\n",
       "Inlining", jit_flags & PGJIT_INLINE ? "true" : "false",
       "Optimization", jit_flags & PGJIT_OPT3 ? "true" : "false",
       "Expressions", jit_flags & PGJIT_EXPR ? "true" : "false",
       "Deforming", jit_flags & PGJIT_DEFORM ? "true" : "false");

  if (es->analyze && es->timing)
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfo(es->str,
        "Timing: %s %.3f ms, %s %.3f ms, %s %.3f ms, %s %.3f ms, %s %.3f ms\n",
        "Generation", 1000.0 * INSTR_TIME_GET_DOUBLE(ji->generation_counter),
        "Inlining", 1000.0 * INSTR_TIME_GET_DOUBLE(ji->inlining_counter),
        "Optimization", 1000.0 * INSTR_TIME_GET_DOUBLE(ji->optimization_counter),
        "Emission", 1000.0 * INSTR_TIME_GET_DOUBLE(ji->emission_counter),
        "Total", 1000.0 * INSTR_TIME_GET_DOUBLE(total_time));
  }

  es->indent -= 1;
 }
 else
 {
  ExplainPropertyInteger("Worker Number", ((void*)0), worker_num, es);
  ExplainPropertyInteger("Functions", ((void*)0), ji->created_functions, es);

  ExplainOpenGroup("Options", "Options", 1, es);
  ExplainPropertyBool("Inlining", jit_flags & PGJIT_INLINE, es);
  ExplainPropertyBool("Optimization", jit_flags & PGJIT_OPT3, es);
  ExplainPropertyBool("Expressions", jit_flags & PGJIT_EXPR, es);
  ExplainPropertyBool("Deforming", jit_flags & PGJIT_DEFORM, es);
  ExplainCloseGroup("Options", "Options", 1, es);

  if (es->analyze && es->timing)
  {
   ExplainOpenGroup("Timing", "Timing", 1, es);

   ExplainPropertyFloat("Generation", "ms",
         1000.0 * INSTR_TIME_GET_DOUBLE(ji->generation_counter),
         3, es);
   ExplainPropertyFloat("Inlining", "ms",
         1000.0 * INSTR_TIME_GET_DOUBLE(ji->inlining_counter),
         3, es);
   ExplainPropertyFloat("Optimization", "ms",
         1000.0 * INSTR_TIME_GET_DOUBLE(ji->optimization_counter),
         3, es);
   ExplainPropertyFloat("Emission", "ms",
         1000.0 * INSTR_TIME_GET_DOUBLE(ji->emission_counter),
         3, es);
   ExplainPropertyFloat("Total", "ms",
         1000.0 * INSTR_TIME_GET_DOUBLE(total_time),
         3, es);

   ExplainCloseGroup("Timing", "Timing", 1, es);
  }
 }

 ExplainCloseGroup("JIT", "JIT", 1, es);
}
