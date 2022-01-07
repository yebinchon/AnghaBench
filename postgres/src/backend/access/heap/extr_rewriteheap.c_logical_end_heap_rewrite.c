
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vfd; int path; } ;
struct TYPE_5__ {scalar_t__ rs_num_rewrite_mappings; int rs_logical_mappings; int rs_logical_rewrite; } ;
typedef TYPE_1__* RewriteState ;
typedef TYPE_2__ RewriteMappingFile ;
typedef int HASH_SEQ_STATUS ;


 int ERROR ;
 int FileClose (int ) ;
 scalar_t__ FileSync (int ,int ) ;
 int WAIT_EVENT_LOGICAL_REWRITE_SYNC ;
 int data_sync_elevel (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int logical_heap_rewrite_flush_mappings (TYPE_1__*) ;

__attribute__((used)) static void
logical_end_heap_rewrite(RewriteState state)
{
 HASH_SEQ_STATUS seq_status;
 RewriteMappingFile *src;


 if (!state->rs_logical_rewrite)
  return;


 if (state->rs_num_rewrite_mappings > 0)
  logical_heap_rewrite_flush_mappings(state);


 hash_seq_init(&seq_status, state->rs_logical_mappings);
 while ((src = (RewriteMappingFile *) hash_seq_search(&seq_status)) != ((void*)0))
 {
  if (FileSync(src->vfd, WAIT_EVENT_LOGICAL_REWRITE_SYNC) != 0)
   ereport(data_sync_elevel(ERROR),
     (errcode_for_file_access(),
      errmsg("could not fsync file \"%s\": %m", src->path)));
  FileClose(src->vfd);
 }

}
