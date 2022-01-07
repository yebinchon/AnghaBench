
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* ropt; } ;
struct TYPE_7__ {scalar_t__ blobCount; TYPE_4__ public; scalar_t__ connection; } ;
struct TYPE_6__ {int single_txn; } ;
typedef TYPE_1__ RestoreOptions ;
typedef TYPE_2__ ArchiveHandle ;


 int StartTransaction (TYPE_4__*) ;
 int ahprintf (TYPE_2__*,char*) ;

void
StartRestoreBlobs(ArchiveHandle *AH)
{
 RestoreOptions *ropt = AH->public.ropt;

 if (!ropt->single_txn)
 {
  if (AH->connection)
   StartTransaction(&AH->public);
  else
   ahprintf(AH, "BEGIN;\n\n");
 }

 AH->blobCount = 0;
}
