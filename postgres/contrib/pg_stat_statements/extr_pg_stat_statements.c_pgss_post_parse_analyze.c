
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pgssLocationLen ;
struct TYPE_11__ {unsigned char* jumble; int clocations_buf_size; scalar_t__ clocations_count; scalar_t__ jumble_len; scalar_t__ highest_extern_param_id; int * clocations; } ;
typedef TYPE_1__ pgssJumbleState ;
struct TYPE_13__ {int p_sourcetext; } ;
struct TYPE_12__ {void* queryId; int stmt_len; int stmt_location; scalar_t__ utilityStmt; } ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ ParseState ;


 int Assert (int) ;
 void* DatumGetUInt64 (int ) ;
 int JUMBLE_SIZE ;
 int JumbleQuery (TYPE_1__*,TYPE_2__*) ;
 void* UINT64CONST (int) ;
 int hash_any_extended (unsigned char*,scalar_t__,int ) ;
 scalar_t__ palloc (int) ;
 int pgss ;
 int pgss_enabled () ;
 int pgss_hash ;
 int pgss_store (int ,void*,int ,int ,int ,int ,int *,TYPE_1__*) ;
 int prev_post_parse_analyze_hook (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void
pgss_post_parse_analyze(ParseState *pstate, Query *query)
{
 pgssJumbleState jstate;

 if (prev_post_parse_analyze_hook)
  prev_post_parse_analyze_hook(pstate, query);


 Assert(query->queryId == UINT64CONST(0));


 if (!pgss || !pgss_hash || !pgss_enabled())
  return;
 if (query->utilityStmt)
 {
  query->queryId = UINT64CONST(0);
  return;
 }


 jstate.jumble = (unsigned char *) palloc(JUMBLE_SIZE);
 jstate.jumble_len = 0;
 jstate.clocations_buf_size = 32;
 jstate.clocations = (pgssLocationLen *)
  palloc(jstate.clocations_buf_size * sizeof(pgssLocationLen));
 jstate.clocations_count = 0;
 jstate.highest_extern_param_id = 0;


 JumbleQuery(&jstate, query);
 query->queryId =
  DatumGetUInt64(hash_any_extended(jstate.jumble, jstate.jumble_len, 0));





 if (query->queryId == UINT64CONST(0))
  query->queryId = UINT64CONST(1);
 if (jstate.clocations_count > 0)
  pgss_store(pstate->p_sourcetext,
       query->queryId,
       query->stmt_location,
       query->stmt_len,
       0,
       0,
       ((void*)0),
       &jstate);
}
