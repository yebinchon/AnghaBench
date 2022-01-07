
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int roletype; char* rolename; } ;
typedef TYPE_1__ RoleSpec ;
typedef int * HeapTuple ;


 int AUTHNAME ;
 int AUTHOID ;
 int Assert (char*) ;
 int CStringGetDatum (char*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSessionUserId () ;
 int GetUserId () ;
 int HeapTupleIsValid (int *) ;




 int * SearchSysCache1 (int ,int) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;

HeapTuple
get_rolespec_tuple(const RoleSpec *role)
{
 HeapTuple tuple;

 switch (role->roletype)
 {
  case 131:
   Assert(role->rolename);
   tuple = SearchSysCache1(AUTHNAME, CStringGetDatum(role->rolename));
   if (!HeapTupleIsValid(tuple))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("role \"%s\" does not exist", role->rolename)));
   break;

  case 130:
   tuple = SearchSysCache1(AUTHOID, GetUserId());
   if (!HeapTupleIsValid(tuple))
    elog(ERROR, "cache lookup failed for role %u", GetUserId());
   break;

  case 128:
   tuple = SearchSysCache1(AUTHOID, GetSessionUserId());
   if (!HeapTupleIsValid(tuple))
    elog(ERROR, "cache lookup failed for role %u", GetSessionUserId());
   break;

  case 129:
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("role \"%s\" does not exist", "public")));
   tuple = ((void*)0);
   break;

  default:
   elog(ERROR, "unexpected role type %d", role->roletype);
 }

 return tuple;
}
