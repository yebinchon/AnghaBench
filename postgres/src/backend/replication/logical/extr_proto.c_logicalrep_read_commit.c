
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_3__ {void* committime; void* end_lsn; void* commit_lsn; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepCommitData ;


 int ERROR ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ pq_getmsgbyte (int ) ;
 void* pq_getmsgint64 (int ) ;

void
logicalrep_read_commit(StringInfo in, LogicalRepCommitData *commit_data)
{

 uint8 flags = pq_getmsgbyte(in);

 if (flags != 0)
  elog(ERROR, "unrecognized flags %u in commit message", flags);


 commit_data->commit_lsn = pq_getmsgint64(in);
 commit_data->end_lsn = pq_getmsgint64(in);
 commit_data->committime = pq_getmsgint64(in);
}
