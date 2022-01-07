
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node; } ;
struct TYPE_8__ {TYPE_1__ smgr_rnode; } ;
struct TYPE_7__ {TYPE_3__* rd_smgr; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Page ;


 int BLCKSZ ;
 int BTREE_METAPAGE ;
 int INIT_FORKNUM ;
 int P_NONE ;
 int PageSetChecksumInplace (scalar_t__,int ) ;
 int _bt_initmetapage (scalar_t__,int ,int ) ;
 int log_newpage (int *,int ,int ,scalar_t__,int) ;
 scalar_t__ palloc (int ) ;
 int smgrimmedsync (TYPE_3__*,int ) ;
 int smgrwrite (TYPE_3__*,int ,int ,char*,int) ;

void
btbuildempty(Relation index)
{
 Page metapage;


 metapage = (Page) palloc(BLCKSZ);
 _bt_initmetapage(metapage, P_NONE, 0);
 PageSetChecksumInplace(metapage, BTREE_METAPAGE);
 smgrwrite(index->rd_smgr, INIT_FORKNUM, BTREE_METAPAGE,
     (char *) metapage, 1);
 log_newpage(&index->rd_smgr->smgr_rnode.node, INIT_FORKNUM,
    BTREE_METAPAGE, metapage, 1);






 smgrimmedsync(index->rd_smgr, INIT_FORKNUM);
}
