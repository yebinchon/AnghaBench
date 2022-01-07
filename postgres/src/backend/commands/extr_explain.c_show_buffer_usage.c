
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ shared_blks_hit; scalar_t__ shared_blks_read; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_written; scalar_t__ local_blks_hit; scalar_t__ local_blks_read; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_written; scalar_t__ temp_blks_read; scalar_t__ temp_blks_written; int blk_write_time; int blk_read_time; } ;
struct TYPE_7__ {scalar_t__ format; int indent; int str; } ;
typedef TYPE_1__ ExplainState ;
typedef TYPE_2__ BufferUsage ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainPropertyFloat (char*,char*,scalar_t__,int,TYPE_1__*) ;
 int ExplainPropertyInteger (char*,int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_IS_ZERO (int ) ;
 int appendStringInfo (int ,char*,scalar_t__) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char*) ;
 scalar_t__ track_io_timing ;

__attribute__((used)) static void
show_buffer_usage(ExplainState *es, const BufferUsage *usage)
{
 if (es->format == EXPLAIN_FORMAT_TEXT)
 {
  bool has_shared = (usage->shared_blks_hit > 0 ||
          usage->shared_blks_read > 0 ||
          usage->shared_blks_dirtied > 0 ||
          usage->shared_blks_written > 0);
  bool has_local = (usage->local_blks_hit > 0 ||
         usage->local_blks_read > 0 ||
         usage->local_blks_dirtied > 0 ||
         usage->local_blks_written > 0);
  bool has_temp = (usage->temp_blks_read > 0 ||
        usage->temp_blks_written > 0);
  bool has_timing = (!INSTR_TIME_IS_ZERO(usage->blk_read_time) ||
          !INSTR_TIME_IS_ZERO(usage->blk_write_time));


  if (has_shared || has_local || has_temp)
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfoString(es->str, "Buffers:");

   if (has_shared)
   {
    appendStringInfoString(es->str, " shared");
    if (usage->shared_blks_hit > 0)
     appendStringInfo(es->str, " hit=%ld",
          usage->shared_blks_hit);
    if (usage->shared_blks_read > 0)
     appendStringInfo(es->str, " read=%ld",
          usage->shared_blks_read);
    if (usage->shared_blks_dirtied > 0)
     appendStringInfo(es->str, " dirtied=%ld",
          usage->shared_blks_dirtied);
    if (usage->shared_blks_written > 0)
     appendStringInfo(es->str, " written=%ld",
          usage->shared_blks_written);
    if (has_local || has_temp)
     appendStringInfoChar(es->str, ',');
   }
   if (has_local)
   {
    appendStringInfoString(es->str, " local");
    if (usage->local_blks_hit > 0)
     appendStringInfo(es->str, " hit=%ld",
          usage->local_blks_hit);
    if (usage->local_blks_read > 0)
     appendStringInfo(es->str, " read=%ld",
          usage->local_blks_read);
    if (usage->local_blks_dirtied > 0)
     appendStringInfo(es->str, " dirtied=%ld",
          usage->local_blks_dirtied);
    if (usage->local_blks_written > 0)
     appendStringInfo(es->str, " written=%ld",
          usage->local_blks_written);
    if (has_temp)
     appendStringInfoChar(es->str, ',');
   }
   if (has_temp)
   {
    appendStringInfoString(es->str, " temp");
    if (usage->temp_blks_read > 0)
     appendStringInfo(es->str, " read=%ld",
          usage->temp_blks_read);
    if (usage->temp_blks_written > 0)
     appendStringInfo(es->str, " written=%ld",
          usage->temp_blks_written);
   }
   appendStringInfoChar(es->str, '\n');
  }


  if (has_timing)
  {
   appendStringInfoSpaces(es->str, es->indent * 2);
   appendStringInfoString(es->str, "I/O Timings:");
   if (!INSTR_TIME_IS_ZERO(usage->blk_read_time))
    appendStringInfo(es->str, " read=%0.3f",
         INSTR_TIME_GET_MILLISEC(usage->blk_read_time));
   if (!INSTR_TIME_IS_ZERO(usage->blk_write_time))
    appendStringInfo(es->str, " write=%0.3f",
         INSTR_TIME_GET_MILLISEC(usage->blk_write_time));
   appendStringInfoChar(es->str, '\n');
  }
 }
 else
 {
  ExplainPropertyInteger("Shared Hit Blocks", ((void*)0),
          usage->shared_blks_hit, es);
  ExplainPropertyInteger("Shared Read Blocks", ((void*)0),
          usage->shared_blks_read, es);
  ExplainPropertyInteger("Shared Dirtied Blocks", ((void*)0),
          usage->shared_blks_dirtied, es);
  ExplainPropertyInteger("Shared Written Blocks", ((void*)0),
          usage->shared_blks_written, es);
  ExplainPropertyInteger("Local Hit Blocks", ((void*)0),
          usage->local_blks_hit, es);
  ExplainPropertyInteger("Local Read Blocks", ((void*)0),
          usage->local_blks_read, es);
  ExplainPropertyInteger("Local Dirtied Blocks", ((void*)0),
          usage->local_blks_dirtied, es);
  ExplainPropertyInteger("Local Written Blocks", ((void*)0),
          usage->local_blks_written, es);
  ExplainPropertyInteger("Temp Read Blocks", ((void*)0),
          usage->temp_blks_read, es);
  ExplainPropertyInteger("Temp Written Blocks", ((void*)0),
          usage->temp_blks_written, es);
  if (track_io_timing)
  {
   ExplainPropertyFloat("I/O Read Time", "ms",
         INSTR_TIME_GET_MILLISEC(usage->blk_read_time),
         3, es);
   ExplainPropertyFloat("I/O Write Time", "ms",
         INSTR_TIME_GET_MILLISEC(usage->blk_write_time),
         3, es);
  }
 }
}
