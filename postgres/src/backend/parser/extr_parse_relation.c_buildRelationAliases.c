
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Value ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {void* colnames; int aliasname; } ;
struct TYPE_10__ {int attname; scalar_t__ attisdropped; } ;
struct TYPE_9__ {int natts; } ;
typedef int ListCell ;
typedef void List ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__ Alias ;


 int Assert (int) ;
 int ERRCODE_INVALID_COLUMN_REFERENCE ;
 int ERROR ;
 void* NIL ;
 char* NameStr (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int,int) ;
 void* lappend (void*,int *) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (void*) ;
 int list_length (void*) ;
 int * lnext (void*,int *) ;
 int * makeString (int ) ;
 int pstrdup (char*) ;

__attribute__((used)) static void
buildRelationAliases(TupleDesc tupdesc, Alias *alias, Alias *eref)
{
 int maxattrs = tupdesc->natts;
 List *aliaslist;
 ListCell *aliaslc;
 int numaliases;
 int varattno;
 int numdropped = 0;

 Assert(eref->colnames == NIL);

 if (alias)
 {
  aliaslist = alias->colnames;
  aliaslc = list_head(aliaslist);
  numaliases = list_length(aliaslist);

  alias->colnames = NIL;
 }
 else
 {
  aliaslist = NIL;
  aliaslc = ((void*)0);
  numaliases = 0;
 }

 for (varattno = 0; varattno < maxattrs; varattno++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, varattno);
  Value *attrname;

  if (attr->attisdropped)
  {

   attrname = makeString(pstrdup(""));
   if (aliaslc)
    alias->colnames = lappend(alias->colnames, attrname);
   numdropped++;
  }
  else if (aliaslc)
  {

   attrname = (Value *) lfirst(aliaslc);
   aliaslc = lnext(aliaslist, aliaslc);
   alias->colnames = lappend(alias->colnames, attrname);
  }
  else
  {
   attrname = makeString(pstrdup(NameStr(attr->attname)));

  }

  eref->colnames = lappend(eref->colnames, attrname);
 }


 if (aliaslc)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_COLUMN_REFERENCE),
     errmsg("table \"%s\" has %d columns available but %d columns specified",
      eref->aliasname, maxattrs - numdropped, numaliases)));
}
