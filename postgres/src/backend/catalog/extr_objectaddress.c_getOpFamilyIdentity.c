
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
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opfamily ;
typedef TYPE_2__* Form_pg_am ;


 int AMOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int OPFAMILYOID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (int ,char*,int ,char*) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name_or_temp (int ) ;
 int * list_make3 (int ,int ,int ) ;
 int pstrdup (char*) ;
 int quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static void
getOpFamilyIdentity(StringInfo buffer, Oid opfid, List **object)
{
 HeapTuple opfTup;
 Form_pg_opfamily opfForm;
 HeapTuple amTup;
 Form_pg_am amForm;
 char *schema;

 opfTup = SearchSysCache1(OPFAMILYOID, ObjectIdGetDatum(opfid));
 if (!HeapTupleIsValid(opfTup))
  elog(ERROR, "cache lookup failed for opfamily %u", opfid);
 opfForm = (Form_pg_opfamily) GETSTRUCT(opfTup);

 amTup = SearchSysCache1(AMOID, ObjectIdGetDatum(opfForm->opfmethod));
 if (!HeapTupleIsValid(amTup))
  elog(ERROR, "cache lookup failed for access method %u",
    opfForm->opfmethod);
 amForm = (Form_pg_am) GETSTRUCT(amTup);

 schema = get_namespace_name_or_temp(opfForm->opfnamespace);
 appendStringInfo(buffer, "%s USING %s",
      quote_qualified_identifier(schema,
            NameStr(opfForm->opfname)),
      NameStr(amForm->amname));

 if (object)
  *object = list_make3(pstrdup(NameStr(amForm->amname)),
        pstrdup(schema),
        pstrdup(NameStr(opfForm->opfname)));

 ReleaseSysCache(amTup);
 ReleaseSysCache(opfTup);
}
