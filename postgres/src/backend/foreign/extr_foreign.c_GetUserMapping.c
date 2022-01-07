
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; void* serverid; void* userid; int umid; } ;
typedef TYPE_1__ UserMapping ;
struct TYPE_5__ {int oid; } ;
typedef void* Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_user_mapping ;
typedef int Datum ;


 int Anum_pg_user_mapping_umoptions ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 void* InvalidOid ;
 int MappingUserName (void*) ;
 int NIL ;
 int ObjectIdGetDatum (void*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int USERMAPPINGUSERSERVER ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ palloc (int) ;
 int untransformRelOptions (int ) ;

UserMapping *
GetUserMapping(Oid userid, Oid serverid)
{
 Datum datum;
 HeapTuple tp;
 bool isnull;
 UserMapping *um;

 tp = SearchSysCache2(USERMAPPINGUSERSERVER,
       ObjectIdGetDatum(userid),
       ObjectIdGetDatum(serverid));

 if (!HeapTupleIsValid(tp))
 {

  tp = SearchSysCache2(USERMAPPINGUSERSERVER,
        ObjectIdGetDatum(InvalidOid),
        ObjectIdGetDatum(serverid));
 }

 if (!HeapTupleIsValid(tp))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("user mapping not found for \"%s\"",
      MappingUserName(userid))));

 um = (UserMapping *) palloc(sizeof(UserMapping));
 um->umid = ((Form_pg_user_mapping) GETSTRUCT(tp))->oid;
 um->userid = userid;
 um->serverid = serverid;


 datum = SysCacheGetAttr(USERMAPPINGUSERSERVER,
       tp,
       Anum_pg_user_mapping_umoptions,
       &isnull);
 if (isnull)
  um->options = NIL;
 else
  um->options = untransformRelOptions(datum);

 ReleaseSysCache(tp);

 return um;
}
