
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;






 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 char* gettext_noop (char*) ;

__attribute__((used)) static void
report_name_conflict(Oid classId, const char *name)
{
 char *msgfmt;

 switch (classId)
 {
  case 133:
   msgfmt = gettext_noop("event trigger \"%s\" already exists");
   break;
  case 132:
   msgfmt = gettext_noop("foreign-data wrapper \"%s\" already exists");
   break;
  case 131:
   msgfmt = gettext_noop("server \"%s\" already exists");
   break;
  case 130:
   msgfmt = gettext_noop("language \"%s\" already exists");
   break;
  case 129:
   msgfmt = gettext_noop("publication \"%s\" already exists");
   break;
  case 128:
   msgfmt = gettext_noop("subscription \"%s\" already exists");
   break;
  default:
   elog(ERROR, "unsupported object class %u", classId);
   break;
 }

 ereport(ERROR,
   (errcode(ERRCODE_DUPLICATE_OBJECT),
    errmsg(msgfmt, name)));
}
