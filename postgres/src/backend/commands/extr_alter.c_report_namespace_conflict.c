
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int ) ;

 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int OidIsValid (int) ;





 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int get_namespace_name (int) ;
 char* gettext_noop (char*) ;

__attribute__((used)) static void
report_namespace_conflict(Oid classId, const char *name, Oid nspOid)
{
 char *msgfmt;

 Assert(OidIsValid(nspOid));

 switch (classId)
 {
  case 133:
   Assert(OidIsValid(nspOid));
   msgfmt = gettext_noop("conversion \"%s\" already exists in schema \"%s\"");
   break;
  case 132:
   Assert(OidIsValid(nspOid));
   msgfmt = gettext_noop("statistics object \"%s\" already exists in schema \"%s\"");
   break;
  case 129:
   Assert(OidIsValid(nspOid));
   msgfmt = gettext_noop("text search parser \"%s\" already exists in schema \"%s\"");
   break;
  case 130:
   Assert(OidIsValid(nspOid));
   msgfmt = gettext_noop("text search dictionary \"%s\" already exists in schema \"%s\"");
   break;
  case 128:
   Assert(OidIsValid(nspOid));
   msgfmt = gettext_noop("text search template \"%s\" already exists in schema \"%s\"");
   break;
  case 131:
   Assert(OidIsValid(nspOid));
   msgfmt = gettext_noop("text search configuration \"%s\" already exists in schema \"%s\"");
   break;
  default:
   elog(ERROR, "unsupported object class %u", classId);
   break;
 }

 ereport(ERROR,
   (errcode(ERRCODE_DUPLICATE_OBJECT),
    errmsg(msgfmt, name, get_namespace_name(nspOid))));
}
