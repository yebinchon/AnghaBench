
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ relNode; scalar_t__ spcNode; int dbNode; } ;
typedef TYPE_1__ RelFileNode ;
typedef int Oid ;
typedef int FileTag ;


 int INIT_MD_FILETAG (int ,TYPE_1__,int ,int ) ;
 int InvalidBlockNumber ;
 int InvalidForkNumber ;
 int RegisterSyncRequest (int *,int ,int) ;
 int SYNC_FILTER_REQUEST ;

void
ForgetDatabaseSyncRequests(Oid dbid)
{
 FileTag tag;
 RelFileNode rnode;

 rnode.dbNode = dbid;
 rnode.spcNode = 0;
 rnode.relNode = 0;

 INIT_MD_FILETAG(tag, rnode, InvalidForkNumber, InvalidBlockNumber);

 RegisterSyncRequest(&tag, SYNC_FILTER_REQUEST, 1 );
}
