
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PagePrecedes; } ;


 int CLOGPagePrecedes ;
 int CLOGShmemBuffers () ;
 int CLOG_LSNS_PER_PAGE ;
 int CLogControlLock ;
 TYPE_1__* ClogCtl ;
 int LWTRANCHE_CLOG_BUFFERS ;
 int SimpleLruInit (TYPE_1__*,char*,int ,int ,int ,char*,int ) ;

void
CLOGShmemInit(void)
{
 ClogCtl->PagePrecedes = CLOGPagePrecedes;
 SimpleLruInit(ClogCtl, "clog", CLOGShmemBuffers(), CLOG_LSNS_PER_PAGE,
      CLogControlLock, "pg_xact", LWTRANCHE_CLOG_BUFFERS);
}
