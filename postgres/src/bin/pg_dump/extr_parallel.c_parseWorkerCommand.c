
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TocEntry ;
typedef int T_Action ;
typedef int DumpId ;
typedef int ArchiveHandle ;


 int ACT_DUMP ;
 int ACT_RESTORE ;
 int Assert (int) ;
 int fatal (char*,char const*) ;
 int * getTocEntryByDumpId (int *,int ) ;
 scalar_t__ messageStartsWith (char const*,char*) ;
 int sscanf (char const*,char*,int *,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
parseWorkerCommand(ArchiveHandle *AH, TocEntry **te, T_Action *act,
       const char *msg)
{
 DumpId dumpId;
 int nBytes;

 if (messageStartsWith(msg, "DUMP "))
 {
  *act = ACT_DUMP;
  sscanf(msg, "DUMP %d%n", &dumpId, &nBytes);
  Assert(nBytes == strlen(msg));
  *te = getTocEntryByDumpId(AH, dumpId);
  Assert(*te != ((void*)0));
 }
 else if (messageStartsWith(msg, "RESTORE "))
 {
  *act = ACT_RESTORE;
  sscanf(msg, "RESTORE %d%n", &dumpId, &nBytes);
  Assert(nBytes == strlen(msg));
  *te = getTocEntryByDumpId(AH, dumpId);
  Assert(*te != ((void*)0));
 }
 else
  fatal("unrecognized command received from master: \"%s\"",
     msg);
}
