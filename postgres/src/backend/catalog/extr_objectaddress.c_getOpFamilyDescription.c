
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int amname; } ;
struct TYPE_3__ {int opfname; int opfnamespace; int opfmethod; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opfamily ;
typedef TYPE_2__* Form_pg_am ;


 int AMOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int OPFAMILYOID ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OpfamilyIsVisible (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int _ (char*) ;
 int appendStringInfo (int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 int quote_qualified_identifier (char*,int ) ;

__attribute__((used)) static void
getOpFamilyDescription(StringInfo buffer, Oid opfid)
{
 HeapTuple opfTup;
 Form_pg_opfamily opfForm;
 HeapTuple amTup;
 Form_pg_am amForm;
 char *nspname;

 opfTup = SearchSysCache1(OPFAMILYOID, ObjectIdGetDatum(opfid));
 if (!HeapTupleIsValid(opfTup))
  elog(ERROR, "cache lookup failed for opfamily %u", opfid);
 opfForm = (Form_pg_opfamily) GETSTRUCT(opfTup);

 amTup = SearchSysCache1(AMOID, ObjectIdGetDatum(opfForm->opfmethod));
 if (!HeapTupleIsValid(amTup))
  elog(ERROR, "cache lookup failed for access method %u",
    opfForm->opfmethod);
 amForm = (Form_pg_am) GETSTRUCT(amTup);


 if (OpfamilyIsVisible(opfid))
  nspname = ((void*)0);
 else
  nspname = get_namespace_name(opfForm->opfnamespace);

 appendStringInfo(buffer, _("operator family %s for access method %s"),
      quote_qualified_identifier(nspname,
            NameStr(opfForm->opfname)),
      NameStr(amForm->amname));

 ReleaseSysCache(amTup);
 ReleaseSysCache(opfTup);
}
