
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int do_fsync; int PagePrecedes; } ;


 int LWTRANCHE_SUBTRANS_BUFFERS ;
 int NUM_SUBTRANS_BUFFERS ;
 int SimpleLruInit (TYPE_1__*,char*,int ,int ,int ,char*,int ) ;
 TYPE_1__* SubTransCtl ;
 int SubTransPagePrecedes ;
 int SubtransControlLock ;

void
SUBTRANSShmemInit(void)
{
 SubTransCtl->PagePrecedes = SubTransPagePrecedes;
 SimpleLruInit(SubTransCtl, "subtrans", NUM_SUBTRANS_BUFFERS, 0,
      SubtransControlLock, "pg_subtrans",
      LWTRANCHE_SUBTRANS_BUFFERS);

 SubTransCtl->do_fsync = 0;
}
