
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dumpId; } ;
typedef TYPE_1__ TocEntry ;
typedef scalar_t__ T_Action ;
typedef int ArchiveHandle ;


 scalar_t__ ACT_DUMP ;
 scalar_t__ ACT_RESTORE ;
 int Assert (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
buildWorkerCommand(ArchiveHandle *AH, TocEntry *te, T_Action act,
       char *buf, int buflen)
{
 if (act == ACT_DUMP)
  snprintf(buf, buflen, "DUMP %d", te->dumpId);
 else if (act == ACT_RESTORE)
  snprintf(buf, buflen, "RESTORE %d", te->dumpId);
 else
  Assert(0);
}
