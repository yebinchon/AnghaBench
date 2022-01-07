
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pgssHashKey ;
struct TYPE_7__ {int usage; } ;
struct TYPE_5__ {int query_len; int encoding; int query_offset; int mutex; TYPE_3__ counters; } ;
typedef TYPE_1__ pgssEntry ;
struct TYPE_6__ {int cur_median_usage; } ;
typedef int Size ;
typedef int Counters ;


 int Assert (int) ;
 int HASH_ENTER ;
 int SpinLockInit (int *) ;
 int USAGE_INIT ;
 int entry_dealloc () ;
 scalar_t__ hash_get_num_entries (int ) ;
 scalar_t__ hash_search (int ,int *,int ,int*) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* pgss ;
 int pgss_hash ;
 scalar_t__ pgss_max ;

__attribute__((used)) static pgssEntry *
entry_alloc(pgssHashKey *key, Size query_offset, int query_len, int encoding,
   bool sticky)
{
 pgssEntry *entry;
 bool found;


 while (hash_get_num_entries(pgss_hash) >= pgss_max)
  entry_dealloc();


 entry = (pgssEntry *) hash_search(pgss_hash, key, HASH_ENTER, &found);

 if (!found)
 {



  memset(&entry->counters, 0, sizeof(Counters));

  entry->counters.usage = sticky ? pgss->cur_median_usage : USAGE_INIT;

  SpinLockInit(&entry->mutex);

  Assert(query_len >= 0);
  entry->query_offset = query_offset;
  entry->query_len = query_len;
  entry->encoding = encoding;
 }

 return entry;
}
