
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int pgssJumbleState ;
struct TYPE_11__ {scalar_t__ queryid; int dbid; int userid; } ;
typedef TYPE_2__ pgssHashKey ;
struct TYPE_10__ {int calls; double total_time; double min_time; double max_time; double mean_time; double sum_var_time; int usage; int blk_write_time; int blk_read_time; int temp_blks_written; int temp_blks_read; int local_blks_written; int local_blks_dirtied; int local_blks_read; int local_blks_hit; int shared_blks_written; int shared_blks_dirtied; int shared_blks_read; int shared_blks_hit; int rows; } ;
struct TYPE_12__ {int mutex; TYPE_1__ counters; } ;
typedef TYPE_3__ pgssEntry ;
struct TYPE_14__ {int gc_count; int lock; } ;
struct TYPE_13__ {int blk_write_time; int blk_read_time; scalar_t__ temp_blks_written; scalar_t__ temp_blks_read; scalar_t__ local_blks_written; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_read; scalar_t__ local_blks_hit; scalar_t__ shared_blks_written; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_read; scalar_t__ shared_blks_hit; } ;
typedef int Size ;
typedef TYPE_4__ BufferUsage ;


 int Assert (int) ;
 int GetDatabaseEncoding () ;
 int GetUserId () ;
 int HASH_FIND ;
 scalar_t__ INSTR_TIME_GET_MILLISEC (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 int MyDatabaseId ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ UINT64CONST (int) ;
 scalar_t__ USAGE_EXEC (double) ;
 int USAGE_INIT ;
 TYPE_3__* entry_alloc (TYPE_2__*,int ,int,int,int ) ;
 int gc_qtexts () ;
 char* generate_normalized_query (int *,char const*,int,int*,int) ;
 scalar_t__ hash_search (int ,TYPE_2__*,int ,int *) ;
 int need_gc_qtexts () ;
 int pfree (char*) ;
 TYPE_6__* pgss ;
 int pgss_hash ;
 scalar_t__ pgss_hash_string (char const*,int) ;
 int qtext_store (char*,int,int *,int*) ;
 scalar_t__ scanner_isspace (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static void
pgss_store(const char *query, uint64 queryId,
     int query_location, int query_len,
     double total_time, uint64 rows,
     const BufferUsage *bufusage,
     pgssJumbleState *jstate)
{
 pgssHashKey key;
 pgssEntry *entry;
 char *norm_query = ((void*)0);
 int encoding = GetDatabaseEncoding();

 Assert(query != ((void*)0));


 if (!pgss || !pgss_hash)
  return;







 if (query_location >= 0)
 {
  Assert(query_location <= strlen(query));
  query += query_location;

  if (query_len <= 0)
   query_len = strlen(query);
  else
   Assert(query_len <= strlen(query));
 }
 else
 {

  query_location = 0;
  query_len = strlen(query);
 }





 while (query_len > 0 && scanner_isspace(query[0]))
  query++, query_location++, query_len--;
 while (query_len > 0 && scanner_isspace(query[query_len - 1]))
  query_len--;




 if (queryId == UINT64CONST(0))
 {
  queryId = pgss_hash_string(query, query_len);






  if (queryId == UINT64CONST(0))
   queryId = UINT64CONST(2);
 }


 key.userid = GetUserId();
 key.dbid = MyDatabaseId;
 key.queryid = queryId;


 LWLockAcquire(pgss->lock, LW_SHARED);

 entry = (pgssEntry *) hash_search(pgss_hash, &key, HASH_FIND, ((void*)0));


 if (!entry)
 {
  Size query_offset;
  int gc_count;
  bool stored;
  bool do_gc;
  if (jstate)
  {
   LWLockRelease(pgss->lock);
   norm_query = generate_normalized_query(jstate, query,
               query_location,
               &query_len,
               encoding);
   LWLockAcquire(pgss->lock, LW_SHARED);
  }


  stored = qtext_store(norm_query ? norm_query : query, query_len,
        &query_offset, &gc_count);






  do_gc = need_gc_qtexts();


  LWLockRelease(pgss->lock);
  LWLockAcquire(pgss->lock, LW_EXCLUSIVE);
  if (!stored || pgss->gc_count != gc_count)
   stored = qtext_store(norm_query ? norm_query : query, query_len,
         &query_offset, ((void*)0));


  if (!stored)
   goto done;


  entry = entry_alloc(&key, query_offset, query_len, encoding,
       jstate != ((void*)0));


  if (do_gc)
   gc_qtexts();
 }


 if (!jstate)
 {




  volatile pgssEntry *e = (volatile pgssEntry *) entry;

  SpinLockAcquire(&e->mutex);


  if (e->counters.calls == 0)
   e->counters.usage = USAGE_INIT;

  e->counters.calls += 1;
  e->counters.total_time += total_time;
  if (e->counters.calls == 1)
  {
   e->counters.min_time = total_time;
   e->counters.max_time = total_time;
   e->counters.mean_time = total_time;
  }
  else
  {




   double old_mean = e->counters.mean_time;

   e->counters.mean_time +=
    (total_time - old_mean) / e->counters.calls;
   e->counters.sum_var_time +=
    (total_time - old_mean) * (total_time - e->counters.mean_time);


   if (e->counters.min_time > total_time)
    e->counters.min_time = total_time;
   if (e->counters.max_time < total_time)
    e->counters.max_time = total_time;
  }
  e->counters.rows += rows;
  e->counters.shared_blks_hit += bufusage->shared_blks_hit;
  e->counters.shared_blks_read += bufusage->shared_blks_read;
  e->counters.shared_blks_dirtied += bufusage->shared_blks_dirtied;
  e->counters.shared_blks_written += bufusage->shared_blks_written;
  e->counters.local_blks_hit += bufusage->local_blks_hit;
  e->counters.local_blks_read += bufusage->local_blks_read;
  e->counters.local_blks_dirtied += bufusage->local_blks_dirtied;
  e->counters.local_blks_written += bufusage->local_blks_written;
  e->counters.temp_blks_read += bufusage->temp_blks_read;
  e->counters.temp_blks_written += bufusage->temp_blks_written;
  e->counters.blk_read_time += INSTR_TIME_GET_MILLISEC(bufusage->blk_read_time);
  e->counters.blk_write_time += INSTR_TIME_GET_MILLISEC(bufusage->blk_write_time);
  e->counters.usage += USAGE_EXEC(total_time);

  SpinLockRelease(&e->mutex);
 }

done:
 LWLockRelease(pgss->lock);


 if (norm_query)
  pfree(norm_query);
}
