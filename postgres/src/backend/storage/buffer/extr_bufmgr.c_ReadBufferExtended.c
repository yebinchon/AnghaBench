
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_rel; int rd_smgr; } ;
struct TYPE_8__ {int relpersistence; } ;
typedef TYPE_2__* Relation ;
typedef int ReadBufferMode ;
typedef int ForkNumber ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_2__*) ;
 int ReadBuffer_common (int ,int ,int ,int ,int ,int ,int*) ;
 int RelationOpenSmgr (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pgstat_count_buffer_hit (TYPE_2__*) ;
 int pgstat_count_buffer_read (TYPE_2__*) ;

Buffer
ReadBufferExtended(Relation reln, ForkNumber forkNum, BlockNumber blockNum,
       ReadBufferMode mode, BufferAccessStrategy strategy)
{
 bool hit;
 Buffer buf;


 RelationOpenSmgr(reln);






 if (RELATION_IS_OTHER_TEMP(reln))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot access temporary tables of other sessions")));





 pgstat_count_buffer_read(reln);
 buf = ReadBuffer_common(reln->rd_smgr, reln->rd_rel->relpersistence,
       forkNum, blockNum, mode, strategy, &hit);
 if (hit)
  pgstat_count_buffer_hit(reln);
 return buf;
}
