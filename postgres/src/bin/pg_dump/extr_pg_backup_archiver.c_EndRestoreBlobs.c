
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* ropt; } ;
struct TYPE_7__ {int blobCount; TYPE_5__ public; scalar_t__ connection; } ;
struct TYPE_6__ {int single_txn; } ;
typedef TYPE_1__ RestoreOptions ;
typedef TYPE_2__ ArchiveHandle ;


 int CommitTransaction (TYPE_5__*) ;
 int ahprintf (TYPE_2__*,char*) ;
 int ngettext (char*,char*,int ) ;
 int pg_log_info (int ,int ) ;

void
EndRestoreBlobs(ArchiveHandle *AH)
{
 RestoreOptions *ropt = AH->public.ropt;

 if (!ropt->single_txn)
 {
  if (AH->connection)
   CommitTransaction(&AH->public);
  else
   ahprintf(AH, "COMMIT;\n\n");
 }

 pg_log_info(ngettext("restored %d large object",
       "restored %d large objects",
       AH->blobCount),
    AH->blobCount);
}
