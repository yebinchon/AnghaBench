
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tmplname; int tmplinit; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_ts_template ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int IsUnderPostmaster ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall1 (int ,int ) ;
 int OidIsValid (int ) ;
 int PointerGetDatum (int *) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TSTEMPLATEOID ;
 int * copyObject (int *) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
verify_dictoptions(Oid tmplId, List *dictoptions)
{
 HeapTuple tup;
 Form_pg_ts_template tform;
 Oid initmethod;
 if (!IsUnderPostmaster)
  return;

 tup = SearchSysCache1(TSTEMPLATEOID, ObjectIdGetDatum(tmplId));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for text search template %u",
    tmplId);
 tform = (Form_pg_ts_template) GETSTRUCT(tup);

 initmethod = tform->tmplinit;

 if (!OidIsValid(initmethod))
 {

  if (dictoptions)
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("text search template \"%s\" does not accept options",
       NameStr(tform->tmplname))));
 }
 else
 {




  dictoptions = copyObject(dictoptions);





  (void) OidFunctionCall1(initmethod, PointerGetDatum(dictoptions));
 }

 ReleaseSysCache(tup);
}
