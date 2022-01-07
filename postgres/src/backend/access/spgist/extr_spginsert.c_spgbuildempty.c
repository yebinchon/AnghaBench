
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node; } ;
struct TYPE_8__ {TYPE_1__ smgr_rnode; } ;
struct TYPE_7__ {TYPE_4__* rd_smgr; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Page ;


 int BLCKSZ ;
 int INIT_FORKNUM ;
 int PageSetChecksumInplace (scalar_t__,int ) ;
 int SPGIST_LEAF ;
 int SPGIST_METAPAGE_BLKNO ;
 int SPGIST_NULLS ;
 int SPGIST_NULL_BLKNO ;
 int SPGIST_ROOT_BLKNO ;
 int SpGistInitMetapage (scalar_t__) ;
 int SpGistInitPage (scalar_t__,int) ;
 int log_newpage (int *,int ,int ,scalar_t__,int) ;
 scalar_t__ palloc (int ) ;
 int smgrimmedsync (TYPE_4__*,int ) ;
 int smgrwrite (TYPE_4__*,int ,int ,char*,int) ;

void
spgbuildempty(Relation index)
{
 Page page;


 page = (Page) palloc(BLCKSZ);
 SpGistInitMetapage(page);
 PageSetChecksumInplace(page, SPGIST_METAPAGE_BLKNO);
 smgrwrite(index->rd_smgr, INIT_FORKNUM, SPGIST_METAPAGE_BLKNO,
     (char *) page, 1);
 log_newpage(&index->rd_smgr->smgr_rnode.node, INIT_FORKNUM,
    SPGIST_METAPAGE_BLKNO, page, 1);


 SpGistInitPage(page, SPGIST_LEAF);

 PageSetChecksumInplace(page, SPGIST_ROOT_BLKNO);
 smgrwrite(index->rd_smgr, INIT_FORKNUM, SPGIST_ROOT_BLKNO,
     (char *) page, 1);
 log_newpage(&index->rd_smgr->smgr_rnode.node, INIT_FORKNUM,
    SPGIST_ROOT_BLKNO, page, 1);


 SpGistInitPage(page, SPGIST_LEAF | SPGIST_NULLS);

 PageSetChecksumInplace(page, SPGIST_NULL_BLKNO);
 smgrwrite(index->rd_smgr, INIT_FORKNUM, SPGIST_NULL_BLKNO,
     (char *) page, 1);
 log_newpage(&index->rd_smgr->smgr_rnode.node, INIT_FORKNUM,
    SPGIST_NULL_BLKNO, page, 1);






 smgrimmedsync(index->rd_smgr, INIT_FORKNUM);
}
