
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dropmsgstrings {char kind; char* nonexistent_msg; char* skipping_msg; int nonexistent_code; } ;
struct TYPE_3__ {int * relname; int * schemaname; } ;
typedef TYPE_1__ RangeVar ;


 int Assert (int) ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 int LookupNamespaceNoError (int *) ;
 int NOTICE ;
 int OidIsValid (int ) ;
 struct dropmsgstrings* dropmsgstringarray ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int *) ;

__attribute__((used)) static void
DropErrorMsgNonExistent(RangeVar *rel, char rightkind, bool missing_ok)
{
 const struct dropmsgstrings *rentry;

 if (rel->schemaname != ((void*)0) &&
  !OidIsValid(LookupNamespaceNoError(rel->schemaname)))
 {
  if (!missing_ok)
  {
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_SCHEMA),
      errmsg("schema \"%s\" does not exist", rel->schemaname)));
  }
  else
  {
   ereport(NOTICE,
     (errmsg("schema \"%s\" does not exist, skipping",
       rel->schemaname)));
  }
  return;
 }

 for (rentry = dropmsgstringarray; rentry->kind != '\0'; rentry++)
 {
  if (rentry->kind == rightkind)
  {
   if (!missing_ok)
   {
    ereport(ERROR,
      (errcode(rentry->nonexistent_code),
       errmsg(rentry->nonexistent_msg, rel->relname)));
   }
   else
   {
    ereport(NOTICE, (errmsg(rentry->skipping_msg, rel->relname)));
    break;
   }
  }
 }

 Assert(rentry->kind != '\0');
}
