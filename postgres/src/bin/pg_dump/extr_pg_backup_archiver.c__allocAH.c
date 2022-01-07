
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pgoff_t ;
struct TYPE_11__ {struct TYPE_11__* prev; struct TYPE_11__* next; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_10__ {int std_strings; int exit_on_error; scalar_t__ n_errors; scalar_t__ encoding; } ;
struct TYPE_12__ {int intSize; int offSize; int compression; int dosync; scalar_t__ format; int promptPassword; int SetupWorkerPtr; int * fSpec; int OF; scalar_t__ gzOut; int sqlparse; scalar_t__ mode; TYPE_2__* toc; int * currTableAm; int * currTablespace; int * currSchema; int * currUser; int createDate; int archiveDumpVersion; TYPE_1__ public; int version; } ;
typedef int SetupWorkerPtrType ;
typedef scalar_t__ ArchiveMode ;
typedef TYPE_3__ ArchiveHandle ;
typedef scalar_t__ ArchiveFormat ;


 int InitArchiveFmt_Custom (TYPE_3__*) ;
 int InitArchiveFmt_Directory (TYPE_3__*) ;
 int InitArchiveFmt_Null (TYPE_3__*) ;
 int InitArchiveFmt_Tar (TYPE_3__*) ;
 int K_VERS_SELF ;
 int O_BINARY ;
 int PG_VERSION ;
 int TRI_DEFAULT ;
 scalar_t__ _discoverArchiveFormat (TYPE_3__*) ;
 int _setmode (int ,int ) ;


 scalar_t__ archModeWrite ;


 scalar_t__ const archUnknown ;
 int fatal (char*,scalar_t__ const) ;
 int fileno (int ) ;
 int memset (int *,int ,int) ;
 int pg_log_debug (char*,char const*,scalar_t__ const) ;
 scalar_t__ pg_malloc0 (int) ;
 int * pg_strdup (char const*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (int *,char*) ;
 int time (int *) ;

__attribute__((used)) static ArchiveHandle *
_allocAH(const char *FileSpec, const ArchiveFormat fmt,
   const int compression, bool dosync, ArchiveMode mode,
   SetupWorkerPtrType setupWorkerPtr)
{
 ArchiveHandle *AH;

 pg_log_debug("allocating AH for %s, format %d", FileSpec, fmt);

 AH = (ArchiveHandle *) pg_malloc0(sizeof(ArchiveHandle));

 AH->version = K_VERS_SELF;


 AH->public.encoding = 0;
 AH->public.std_strings = 0;


 AH->public.exit_on_error = 1;
 AH->public.n_errors = 0;

 AH->archiveDumpVersion = PG_VERSION;

 AH->createDate = time(((void*)0));

 AH->intSize = sizeof(int);
 AH->offSize = sizeof(pgoff_t);
 if (FileSpec)
 {
  AH->fSpec = pg_strdup(FileSpec);







 }
 else
  AH->fSpec = ((void*)0);

 AH->currUser = ((void*)0);
 AH->currSchema = ((void*)0);
 AH->currTablespace = ((void*)0);
 AH->currTableAm = ((void*)0);

 AH->toc = (TocEntry *) pg_malloc0(sizeof(TocEntry));

 AH->toc->next = AH->toc;
 AH->toc->prev = AH->toc;

 AH->mode = mode;
 AH->compression = compression;
 AH->dosync = dosync;

 memset(&(AH->sqlparse), 0, sizeof(AH->sqlparse));


 AH->gzOut = 0;
 AH->OF = stdout;
 AH->SetupWorkerPtr = setupWorkerPtr;

 if (fmt == archUnknown)
  AH->format = _discoverArchiveFormat(AH);
 else
  AH->format = fmt;

 AH->promptPassword = TRI_DEFAULT;

 switch (AH->format)
 {
  case 131:
   InitArchiveFmt_Custom(AH);
   break;

  case 129:
   InitArchiveFmt_Null(AH);
   break;

  case 130:
   InitArchiveFmt_Directory(AH);
   break;

  case 128:
   InitArchiveFmt_Tar(AH);
   break;

  default:
   fatal("unrecognized file format \"%d\"", fmt);
 }

 return AH;
}
