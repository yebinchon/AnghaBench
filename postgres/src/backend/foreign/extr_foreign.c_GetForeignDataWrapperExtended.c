
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bits16 ;
struct TYPE_5__ {int options; int fdwvalidator; int fdwhandler; int fdwname; int owner; int fdwid; } ;
struct TYPE_4__ {int fdwvalidator; int fdwhandler; int fdwname; int fdwowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_data_wrapper ;
typedef TYPE_2__ ForeignDataWrapper ;
typedef int Datum ;


 int Anum_pg_foreign_data_wrapper_fdwoptions ;
 int ERROR ;
 int FDW_MISSING_OK ;
 int FOREIGNDATAWRAPPEROID ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ) ;
 scalar_t__ palloc (int) ;
 int pstrdup (int ) ;
 int untransformRelOptions (int ) ;

ForeignDataWrapper *
GetForeignDataWrapperExtended(Oid fdwid, bits16 flags)
{
 Form_pg_foreign_data_wrapper fdwform;
 ForeignDataWrapper *fdw;
 Datum datum;
 HeapTuple tp;
 bool isnull;

 tp = SearchSysCache1(FOREIGNDATAWRAPPEROID, ObjectIdGetDatum(fdwid));

 if (!HeapTupleIsValid(tp))
 {
  if ((flags & FDW_MISSING_OK) == 0)
   elog(ERROR, "cache lookup failed for foreign-data wrapper %u", fdwid);
  return ((void*)0);
 }

 fdwform = (Form_pg_foreign_data_wrapper) GETSTRUCT(tp);

 fdw = (ForeignDataWrapper *) palloc(sizeof(ForeignDataWrapper));
 fdw->fdwid = fdwid;
 fdw->owner = fdwform->fdwowner;
 fdw->fdwname = pstrdup(NameStr(fdwform->fdwname));
 fdw->fdwhandler = fdwform->fdwhandler;
 fdw->fdwvalidator = fdwform->fdwvalidator;


 datum = SysCacheGetAttr(FOREIGNDATAWRAPPEROID,
       tp,
       Anum_pg_foreign_data_wrapper_fdwoptions,
       &isnull);
 if (isnull)
  fdw->options = NIL;
 else
  fdw->options = untransformRelOptions(datum);

 ReleaseSysCache(tp);

 return fdw;
}
