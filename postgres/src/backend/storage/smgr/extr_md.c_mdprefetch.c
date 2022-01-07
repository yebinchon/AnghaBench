
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int mdfd_vfd; } ;
typedef int SMgrRelation ;
typedef TYPE_1__ MdfdVec ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int EXTENSION_FAIL ;
 int FilePrefetch (int ,int,scalar_t__,int ) ;
 int RELSEG_SIZE ;
 int WAIT_EVENT_DATA_FILE_PREFETCH ;
 TYPE_1__* _mdfd_getseg (int ,int ,int,int,int ) ;

void
mdprefetch(SMgrRelation reln, ForkNumber forknum, BlockNumber blocknum)
{
}
