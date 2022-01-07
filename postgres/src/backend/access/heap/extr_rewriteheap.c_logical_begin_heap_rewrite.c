
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hash_ctl ;
typedef scalar_t__ TransactionId ;
struct TYPE_7__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_6__ {int rs_logical_rewrite; int rs_logical_mappings; int rs_cxt; scalar_t__ rs_num_rewrite_mappings; int rs_begin_lsn; scalar_t__ rs_logical_xmin; int rs_old_rel; } ;
typedef TYPE_1__* RewriteState ;
typedef int RewriteMappingFile ;
typedef TYPE_2__ HASHCTL ;


 int GetXLogInsertRecPtr () ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 scalar_t__ InvalidTransactionId ;
 int ProcArrayGetReplicationSlotXmin (int *,scalar_t__*) ;
 int RelationIsAccessibleInLogicalDecoding (int ) ;
 int hash_create (char*,int,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
logical_begin_heap_rewrite(RewriteState state)
{
 HASHCTL hash_ctl;
 TransactionId logical_xmin;






 state->rs_logical_rewrite =
  RelationIsAccessibleInLogicalDecoding(state->rs_old_rel);

 if (!state->rs_logical_rewrite)
  return;

 ProcArrayGetReplicationSlotXmin(((void*)0), &logical_xmin);






 if (logical_xmin == InvalidTransactionId)
 {
  state->rs_logical_rewrite = 0;
  return;
 }

 state->rs_logical_xmin = logical_xmin;
 state->rs_begin_lsn = GetXLogInsertRecPtr();
 state->rs_num_rewrite_mappings = 0;

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(TransactionId);
 hash_ctl.entrysize = sizeof(RewriteMappingFile);
 hash_ctl.hcxt = state->rs_cxt;

 state->rs_logical_mappings =
  hash_create("Logical rewrite mapping",
     128,
     &hash_ctl,
     HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
}
