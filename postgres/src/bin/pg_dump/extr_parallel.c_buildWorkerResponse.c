
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dumpId; } ;
typedef TYPE_2__ TocEntry ;
typedef int T_Action ;
struct TYPE_6__ {int n_errors; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef TYPE_3__ ArchiveHandle ;


 int WORKER_IGNORED_ERRORS ;
 int snprintf (char*,int,char*,int,int,int) ;

__attribute__((used)) static void
buildWorkerResponse(ArchiveHandle *AH, TocEntry *te, T_Action act, int status,
     char *buf, int buflen)
{
 snprintf(buf, buflen, "OK %d %d %d",
    te->dumpId,
    status,
    status == WORKER_IGNORED_ERRORS ? AH->public.n_errors : 0);
}
