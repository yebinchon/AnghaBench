
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_5__ {int * rd_support; TYPE_1__* rd_indam; } ;
struct TYPE_4__ {int amsupport; } ;
typedef TYPE_2__* Relation ;
typedef int RegProcedure ;
typedef int AttrNumber ;


 int Assert (int) ;

RegProcedure
index_getprocid(Relation irel,
    AttrNumber attnum,
    uint16 procnum)
{
 RegProcedure *loc;
 int nproc;
 int procindex;

 nproc = irel->rd_indam->amsupport;

 Assert(procnum > 0 && procnum <= (uint16) nproc);

 procindex = (nproc * (attnum - 1)) + (procnum - 1);

 loc = irel->rd_support;

 Assert(loc != ((void*)0));

 return loc[procindex];
}
