
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dumpId; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_6__ {int n_errors; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef scalar_t__ DumpId ;
typedef TYPE_3__ ArchiveHandle ;


 int Assert (int) ;
 int fatal (char*,char const*) ;
 scalar_t__ messageStartsWith (char const*,char*) ;
 int sscanf (char const*,char*,scalar_t__*,int*,int*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
parseWorkerResponse(ArchiveHandle *AH, TocEntry *te,
     const char *msg)
{
 DumpId dumpId;
 int nBytes,
    n_errors;
 int status = 0;

 if (messageStartsWith(msg, "OK "))
 {
  sscanf(msg, "OK %d %d %d%n", &dumpId, &status, &n_errors, &nBytes);

  Assert(dumpId == te->dumpId);
  Assert(nBytes == strlen(msg));

  AH->public.n_errors += n_errors;
 }
 else
  fatal("invalid message received from worker: \"%s\"",
     msg);

 return status;
}
