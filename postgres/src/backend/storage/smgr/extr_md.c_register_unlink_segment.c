
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; } ;
typedef TYPE_1__ RelFileNodeBackend ;
typedef int ForkNumber ;
typedef int FileTag ;
typedef int BlockNumber ;


 int Assert (int) ;
 int INIT_MD_FILETAG (int ,int ,int ,int ) ;
 int RegisterSyncRequest (int *,int ,int) ;
 int RelFileNodeBackendIsTemp (TYPE_1__) ;
 int SYNC_UNLINK_REQUEST ;

__attribute__((used)) static void
register_unlink_segment(RelFileNodeBackend rnode, ForkNumber forknum,
      BlockNumber segno)
{
 FileTag tag;

 INIT_MD_FILETAG(tag, rnode.node, forknum, segno);


 Assert(!RelFileNodeBackendIsTemp(rnode));

 RegisterSyncRequest(&tag, SYNC_UNLINK_REQUEST, 1 );
}
