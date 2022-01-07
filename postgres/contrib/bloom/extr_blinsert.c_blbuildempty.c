
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int node; } ;
struct TYPE_9__ {TYPE_1__ smgr_rnode; } ;
struct TYPE_8__ {TYPE_3__* rd_smgr; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Page ;


 int BLCKSZ ;
 int BLOOM_METAPAGE_BLKNO ;
 int BloomFillMetapage (TYPE_2__*,scalar_t__) ;
 int INIT_FORKNUM ;
 int PageSetChecksumInplace (scalar_t__,int ) ;
 int log_newpage (int *,int ,int ,scalar_t__,int) ;
 scalar_t__ palloc (int ) ;
 int smgrimmedsync (TYPE_3__*,int ) ;
 int smgrwrite (TYPE_3__*,int ,int ,char*,int) ;

void
blbuildempty(Relation index)
{
 Page metapage;


 metapage = (Page) palloc(BLCKSZ);
 BloomFillMetapage(index, metapage);
 PageSetChecksumInplace(metapage, BLOOM_METAPAGE_BLKNO);
 smgrwrite(index->rd_smgr, INIT_FORKNUM, BLOOM_METAPAGE_BLKNO,
     (char *) metapage, 1);
 log_newpage(&index->rd_smgr->smgr_rnode.node, INIT_FORKNUM,
    BLOOM_METAPAGE_BLKNO, metapage, 1);






 smgrimmedsync(index->rd_smgr, INIT_FORKNUM);
}
