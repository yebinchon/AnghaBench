
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ teSection ;
typedef int stamp_str ;
struct TYPE_14__ {int oid; int tableoid; } ;
struct TYPE_15__ {scalar_t__ section; scalar_t__ nDeps; int * dependencies; int desc; TYPE_2__ catalogId; int dumpId; int owner; int namespace; int tag; struct TYPE_15__* next; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_13__ {TYPE_4__* ropt; } ;
struct TYPE_17__ {int format; TYPE_3__* toc; int archiveDumpVersion; int archiveRemoteVersion; scalar_t__ offSize; scalar_t__ intSize; int version; int compression; int tocCount; int archdbname; int createDate; TYPE_1__ public; } ;
struct TYPE_16__ {scalar_t__ filename; scalar_t__ strict_names; scalar_t__ verbose; } ;
typedef TYPE_4__ RestoreOptions ;
typedef int OutputContext ;
typedef TYPE_5__ ArchiveHandle ;
typedef int Archive ;


 int ARCHIVE_MAJOR (int ) ;
 int ARCHIVE_MINOR (int ) ;
 int ARCHIVE_REV (int ) ;
 int PGDUMP_STRFTIME_FMT ;
 int REQ_DATA ;
 int REQ_SCHEMA ;
 int RestoreOutput (TYPE_5__*,int ) ;
 scalar_t__ SECTION_NONE ;
 scalar_t__ SECTION_PRE_DATA ;
 int SaveOutput (TYPE_5__*) ;
 int SetOutput (TYPE_5__*,scalar_t__,int ) ;
 int StrictNamesCheck (TYPE_4__*) ;
 int _tocEntryRequired (TYPE_3__*,scalar_t__,TYPE_5__*) ;
 int ahprintf (TYPE_5__*,char*,...) ;



 int free (char*) ;
 int localtime (int *) ;
 char* sanitize_line (int ,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strftime (char*,int,int ,int ) ;

void
PrintTOCSummary(Archive *AHX)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;
 RestoreOptions *ropt = AH->public.ropt;
 TocEntry *te;
 teSection curSection;
 OutputContext sav;
 const char *fmtName;
 char stamp_str[64];

 sav = SaveOutput(AH);
 if (ropt->filename)
  SetOutput(AH, ropt->filename, 0 );

 if (strftime(stamp_str, sizeof(stamp_str), PGDUMP_STRFTIME_FMT,
     localtime(&AH->createDate)) == 0)
  strcpy(stamp_str, "[unknown]");

 ahprintf(AH, ";\n; Archive created at %s\n", stamp_str);
 ahprintf(AH, ";     dbname: %s\n;     TOC Entries: %d\n;     Compression: %d\n",
    sanitize_line(AH->archdbname, 0),
    AH->tocCount, AH->compression);

 switch (AH->format)
 {
  case 130:
   fmtName = "CUSTOM";
   break;
  case 129:
   fmtName = "DIRECTORY";
   break;
  case 128:
   fmtName = "TAR";
   break;
  default:
   fmtName = "UNKNOWN";
 }

 ahprintf(AH, ";     Dump Version: %d.%d-%d\n",
    ARCHIVE_MAJOR(AH->version), ARCHIVE_MINOR(AH->version), ARCHIVE_REV(AH->version));
 ahprintf(AH, ";     Format: %s\n", fmtName);
 ahprintf(AH, ";     Integer: %d bytes\n", (int) AH->intSize);
 ahprintf(AH, ";     Offset: %d bytes\n", (int) AH->offSize);
 if (AH->archiveRemoteVersion)
  ahprintf(AH, ";     Dumped from database version: %s\n",
     AH->archiveRemoteVersion);
 if (AH->archiveDumpVersion)
  ahprintf(AH, ";     Dumped by pg_dump version: %s\n",
     AH->archiveDumpVersion);

 ahprintf(AH, ";\n;\n; Selected TOC Entries:\n;\n");

 curSection = SECTION_PRE_DATA;
 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  if (te->section != SECTION_NONE)
   curSection = te->section;
  if (ropt->verbose ||
   (_tocEntryRequired(te, curSection, AH) & (REQ_SCHEMA | REQ_DATA)) != 0)
  {
   char *sanitized_name;
   char *sanitized_schema;
   char *sanitized_owner;



   sanitized_name = sanitize_line(te->tag, 0);
   sanitized_schema = sanitize_line(te->namespace, 1);
   sanitized_owner = sanitize_line(te->owner, 0);

   ahprintf(AH, "%d; %u %u %s %s %s %s\n", te->dumpId,
      te->catalogId.tableoid, te->catalogId.oid,
      te->desc, sanitized_schema, sanitized_name,
      sanitized_owner);

   free(sanitized_name);
   free(sanitized_schema);
   free(sanitized_owner);
  }
  if (ropt->verbose && te->nDeps > 0)
  {
   int i;

   ahprintf(AH, ";\tdepends on:");
   for (i = 0; i < te->nDeps; i++)
    ahprintf(AH, " %d", te->dependencies[i]);
   ahprintf(AH, "\n");
  }
 }


 if (ropt->strict_names)
  StrictNamesCheck(ropt);

 if (ropt->filename)
  RestoreOutput(AH, sav);
}
