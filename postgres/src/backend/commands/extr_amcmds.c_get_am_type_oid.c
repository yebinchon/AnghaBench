
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char amtype; int oid; int amname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_am ;


 int AMNAME ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int NameStr (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int get_am_type_string (char) ;

__attribute__((used)) static Oid
get_am_type_oid(const char *amname, char amtype, bool missing_ok)
{
 HeapTuple tup;
 Oid oid = InvalidOid;

 tup = SearchSysCache1(AMNAME, CStringGetDatum(amname));
 if (HeapTupleIsValid(tup))
 {
  Form_pg_am amform = (Form_pg_am) GETSTRUCT(tup);

  if (amtype != '\0' &&
   amform->amtype != amtype)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("access method \"%s\" is not of type %s",
       NameStr(amform->amname),
       get_am_type_string(amtype))));

  oid = amform->oid;
  ReleaseSysCache(tup);
 }

 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("access method \"%s\" does not exist", amname)));
 return oid;
}
