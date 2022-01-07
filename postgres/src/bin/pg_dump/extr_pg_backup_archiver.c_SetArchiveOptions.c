
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ropt; int * dopt; } ;
typedef int RestoreOptions ;
typedef int DumpOptions ;
typedef TYPE_1__ Archive ;


 int * dumpOptionsFromRestoreOptions (int *) ;

void
SetArchiveOptions(Archive *AH, DumpOptions *dopt, RestoreOptions *ropt)
{

 if (dopt == ((void*)0) && ropt != ((void*)0))
  dopt = dumpOptionsFromRestoreOptions(ropt);


 AH->dopt = dopt;
 AH->ropt = ropt;
}
