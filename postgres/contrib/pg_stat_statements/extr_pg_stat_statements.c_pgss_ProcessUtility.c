
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int instr_time ;
struct TYPE_9__ {int blk_write_time; int blk_read_time; scalar_t__ temp_blks_written; scalar_t__ temp_blks_read; scalar_t__ local_blks_written; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_read; scalar_t__ local_blks_hit; scalar_t__ shared_blks_written; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_read; scalar_t__ shared_blks_hit; } ;
struct TYPE_8__ {int stmt_len; int stmt_location; int * utilityStmt; } ;
typedef int QueryEnvironment ;
typedef int ProcessUtilityContext ;
typedef TYPE_1__ PlannedStmt ;
typedef int ParamListInfo ;
typedef int Node ;
typedef int DestReceiver ;
typedef TYPE_2__ BufferUsage ;


 int DeallocateStmt ;
 int ExecuteStmt ;
 int INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int IsA (int *,int ) ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int PrepareStmt ;
 int nested_level ;
 TYPE_2__ pgBufferUsage ;
 scalar_t__ pg_strtouint64 (char*,int *,int) ;
 scalar_t__ pgss_enabled () ;
 int pgss_store (char const*,int ,int ,int ,int ,scalar_t__,TYPE_2__*,int *) ;
 scalar_t__ pgss_track_utility ;
 int prev_ProcessUtility (TYPE_1__*,char const*,int ,int ,int *,int *,char*) ;
 int standard_ProcessUtility (TYPE_1__*,char const*,int ,int ,int *,int *,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
pgss_ProcessUtility(PlannedStmt *pstmt, const char *queryString,
     ProcessUtilityContext context,
     ParamListInfo params, QueryEnvironment *queryEnv,
     DestReceiver *dest, char *completionTag)
{
 Node *parsetree = pstmt->utilityStmt;
 if (pgss_track_utility && pgss_enabled() &&
  !IsA(parsetree, ExecuteStmt) &&
  !IsA(parsetree, PrepareStmt) &&
  !IsA(parsetree, DeallocateStmt))
 {
  instr_time start;
  instr_time duration;
  uint64 rows;
  BufferUsage bufusage_start,
     bufusage;

  bufusage_start = pgBufferUsage;
  INSTR_TIME_SET_CURRENT(start);

  nested_level++;
  PG_TRY();
  {
   if (prev_ProcessUtility)
    prev_ProcessUtility(pstmt, queryString,
         context, params, queryEnv,
         dest, completionTag);
   else
    standard_ProcessUtility(pstmt, queryString,
          context, params, queryEnv,
          dest, completionTag);
  }
  PG_FINALLY();
  {
   nested_level--;
  }
  PG_END_TRY();

  INSTR_TIME_SET_CURRENT(duration);
  INSTR_TIME_SUBTRACT(duration, start);


  if (completionTag &&
   strncmp(completionTag, "COPY ", 5) == 0)
   rows = pg_strtouint64(completionTag + 5, ((void*)0), 10);
  else
   rows = 0;


  bufusage.shared_blks_hit =
   pgBufferUsage.shared_blks_hit - bufusage_start.shared_blks_hit;
  bufusage.shared_blks_read =
   pgBufferUsage.shared_blks_read - bufusage_start.shared_blks_read;
  bufusage.shared_blks_dirtied =
   pgBufferUsage.shared_blks_dirtied - bufusage_start.shared_blks_dirtied;
  bufusage.shared_blks_written =
   pgBufferUsage.shared_blks_written - bufusage_start.shared_blks_written;
  bufusage.local_blks_hit =
   pgBufferUsage.local_blks_hit - bufusage_start.local_blks_hit;
  bufusage.local_blks_read =
   pgBufferUsage.local_blks_read - bufusage_start.local_blks_read;
  bufusage.local_blks_dirtied =
   pgBufferUsage.local_blks_dirtied - bufusage_start.local_blks_dirtied;
  bufusage.local_blks_written =
   pgBufferUsage.local_blks_written - bufusage_start.local_blks_written;
  bufusage.temp_blks_read =
   pgBufferUsage.temp_blks_read - bufusage_start.temp_blks_read;
  bufusage.temp_blks_written =
   pgBufferUsage.temp_blks_written - bufusage_start.temp_blks_written;
  bufusage.blk_read_time = pgBufferUsage.blk_read_time;
  INSTR_TIME_SUBTRACT(bufusage.blk_read_time, bufusage_start.blk_read_time);
  bufusage.blk_write_time = pgBufferUsage.blk_write_time;
  INSTR_TIME_SUBTRACT(bufusage.blk_write_time, bufusage_start.blk_write_time);

  pgss_store(queryString,
       0,
       pstmt->stmt_location,
       pstmt->stmt_len,
       INSTR_TIME_GET_MILLISEC(duration),
       rows,
       &bufusage,
       ((void*)0));
 }
 else
 {
  if (prev_ProcessUtility)
   prev_ProcessUtility(pstmt, queryString,
        context, params, queryEnv,
        dest, completionTag);
  else
   standard_ProcessUtility(pstmt, queryString,
         context, params, queryEnv,
         dest, completionTag);
 }
}
