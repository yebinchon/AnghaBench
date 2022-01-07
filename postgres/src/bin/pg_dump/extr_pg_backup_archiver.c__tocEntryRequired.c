
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int teSection ;
typedef int teReqs ;
struct TYPE_11__ {int dumpId; int nDeps; scalar_t__ tag; scalar_t__ desc; int * defn; int hadDumper; scalar_t__ namespace; int * dependencies; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_14__ {int * head; } ;
struct TYPE_10__ {TYPE_3__* ropt; } ;
struct TYPE_13__ {TYPE_1__ public; } ;
struct TYPE_12__ {int dumpSections; scalar_t__ dataOnly; scalar_t__ binary_upgrade; scalar_t__ sequence_data; scalar_t__ schemaOnly; TYPE_5__ triggerNames; int selTrigger; TYPE_5__ functionNames; int selFunction; TYPE_5__ indexNames; int selIndex; TYPE_5__ tableNames; int selTable; scalar_t__ selTypes; TYPE_5__ schemaExcludeNames; TYPE_5__ schemaNames; scalar_t__ createDB; int * idWanted; scalar_t__ no_subscriptions; scalar_t__ no_security_labels; scalar_t__ no_publications; scalar_t__ no_comments; scalar_t__ aclsSkip; } ;
typedef TYPE_3__ RestoreOptions ;
typedef TYPE_4__ ArchiveHandle ;


 int DUMP_DATA ;
 int DUMP_POST_DATA ;
 int DUMP_PRE_DATA ;
 int REQ_DATA ;
 int REQ_SCHEMA ;
 int REQ_SPECIAL ;



 scalar_t__ TocIDRequired (TYPE_4__*,int ) ;
 scalar_t__ _tocEntryIsACL (TYPE_2__*) ;
 scalar_t__ simple_string_list_member (TYPE_5__*,scalar_t__) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static teReqs
_tocEntryRequired(TocEntry *te, teSection curSection, ArchiveHandle *AH)
{
 teReqs res = REQ_SCHEMA | REQ_DATA;
 RestoreOptions *ropt = AH->public.ropt;


 if (strcmp(te->desc, "ENCODING") == 0 ||
  strcmp(te->desc, "STDSTRINGS") == 0 ||
  strcmp(te->desc, "SEARCHPATH") == 0)
  return REQ_SPECIAL;






 if (strcmp(te->desc, "DATABASE") == 0 ||
  strcmp(te->desc, "DATABASE PROPERTIES") == 0)
 {
  if (ropt->createDB)
   return REQ_SCHEMA;
  else
   return 0;
 }






 if (ropt->aclsSkip && _tocEntryIsACL(te))
  return 0;


 if (ropt->no_comments && strcmp(te->desc, "COMMENT") == 0)
  return 0;





 if (ropt->no_publications &&
  (strcmp(te->desc, "PUBLICATION") == 0 ||
   strcmp(te->desc, "PUBLICATION TABLE") == 0))
  return 0;


 if (ropt->no_security_labels && strcmp(te->desc, "SECURITY LABEL") == 0)
  return 0;


 if (ropt->no_subscriptions && strcmp(te->desc, "SUBSCRIPTION") == 0)
  return 0;


 switch (curSection)
 {
  case 128:
   if (!(ropt->dumpSections & DUMP_PRE_DATA))
    return 0;
   break;
  case 130:
   if (!(ropt->dumpSections & DUMP_DATA))
    return 0;
   break;
  case 129:
   if (!(ropt->dumpSections & DUMP_POST_DATA))
    return 0;
   break;
  default:

   return 0;
 }


 if (ropt->idWanted && !ropt->idWanted[te->dumpId - 1])
  return 0;




 if (strcmp(te->desc, "ACL") == 0 ||
  strcmp(te->desc, "COMMENT") == 0 ||
  strcmp(te->desc, "SECURITY LABEL") == 0)
 {

  if (strncmp(te->tag, "DATABASE ", 9) == 0)
  {
   if (!ropt->createDB)
    return 0;
  }
  else if (ropt->schemaNames.head != ((void*)0) ||
     ropt->schemaExcludeNames.head != ((void*)0) ||
     ropt->selTypes)
  {
   if (te->nDeps != 1 ||
    TocIDRequired(AH, te->dependencies[0]) == 0)
    return 0;
  }
 }
 else
 {

  if (ropt->schemaNames.head != ((void*)0))
  {

   if (!te->namespace)
    return 0;
   if (!simple_string_list_member(&ropt->schemaNames, te->namespace))
    return 0;
  }

  if (ropt->schemaExcludeNames.head != ((void*)0) &&
   te->namespace &&
   simple_string_list_member(&ropt->schemaExcludeNames, te->namespace))
   return 0;

  if (ropt->selTypes)
  {
   if (strcmp(te->desc, "TABLE") == 0 ||
    strcmp(te->desc, "TABLE DATA") == 0 ||
    strcmp(te->desc, "VIEW") == 0 ||
    strcmp(te->desc, "FOREIGN TABLE") == 0 ||
    strcmp(te->desc, "MATERIALIZED VIEW") == 0 ||
    strcmp(te->desc, "MATERIALIZED VIEW DATA") == 0 ||
    strcmp(te->desc, "SEQUENCE") == 0 ||
    strcmp(te->desc, "SEQUENCE SET") == 0)
   {
    if (!ropt->selTable)
     return 0;
    if (ropt->tableNames.head != ((void*)0) &&
     !simple_string_list_member(&ropt->tableNames, te->tag))
     return 0;
   }
   else if (strcmp(te->desc, "INDEX") == 0)
   {
    if (!ropt->selIndex)
     return 0;
    if (ropt->indexNames.head != ((void*)0) &&
     !simple_string_list_member(&ropt->indexNames, te->tag))
     return 0;
   }
   else if (strcmp(te->desc, "FUNCTION") == 0 ||
      strcmp(te->desc, "AGGREGATE") == 0 ||
      strcmp(te->desc, "PROCEDURE") == 0)
   {
    if (!ropt->selFunction)
     return 0;
    if (ropt->functionNames.head != ((void*)0) &&
     !simple_string_list_member(&ropt->functionNames, te->tag))
     return 0;
   }
   else if (strcmp(te->desc, "TRIGGER") == 0)
   {
    if (!ropt->selTrigger)
     return 0;
    if (ropt->triggerNames.head != ((void*)0) &&
     !simple_string_list_member(&ropt->triggerNames, te->tag))
     return 0;
   }
   else
    return 0;
  }
 }







 if (!te->hadDumper)
 {







  if (strcmp(te->desc, "SEQUENCE SET") == 0 ||
   strcmp(te->desc, "BLOB") == 0 ||
   (strcmp(te->desc, "ACL") == 0 &&
    strncmp(te->tag, "LARGE OBJECT ", 13) == 0) ||
   (strcmp(te->desc, "COMMENT") == 0 &&
    strncmp(te->tag, "LARGE OBJECT ", 13) == 0) ||
   (strcmp(te->desc, "SECURITY LABEL") == 0 &&
    strncmp(te->tag, "LARGE OBJECT ", 13) == 0))
   res = res & REQ_DATA;
  else
   res = res & ~REQ_DATA;
 }


 if (!te->defn || !te->defn[0])
  res = res & ~REQ_SCHEMA;





 if ((strcmp(te->desc, "<Init>") == 0) && (strcmp(te->tag, "Max OID") == 0))
  return 0;


 if (ropt->schemaOnly)
 {
  if (!(ropt->sequence_data && strcmp(te->desc, "SEQUENCE SET") == 0) &&
   !(ropt->binary_upgrade &&
     (strcmp(te->desc, "BLOB") == 0 ||
      (strcmp(te->desc, "ACL") == 0 &&
    strncmp(te->tag, "LARGE OBJECT ", 13) == 0) ||
      (strcmp(te->desc, "COMMENT") == 0 &&
    strncmp(te->tag, "LARGE OBJECT ", 13) == 0) ||
      (strcmp(te->desc, "SECURITY LABEL") == 0 &&
    strncmp(te->tag, "LARGE OBJECT ", 13) == 0))))
   res = res & REQ_SCHEMA;
 }


 if (ropt->dataOnly)
  res = res & REQ_DATA;

 return res;
}
