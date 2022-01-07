
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node; } ;
typedef TYPE_1__ RelFileNodeBackend ;
typedef int ForkNumber ;
typedef int FileTag ;
typedef int BlockNumber ;


 int INIT_MD_FILETAG (int ,int ,int ,int ) ;
 int RegisterSyncRequest (int *,int ,int) ;
 int SYNC_FORGET_REQUEST ;

__attribute__((used)) static void
register_forget_request(RelFileNodeBackend rnode, ForkNumber forknum,
      BlockNumber segno)
{
 FileTag tag;

 INIT_MD_FILETAG(tag, rnode.node, forknum, segno);

 RegisterSyncRequest(&tag, SYNC_FORGET_REQUEST, 1 );
}
