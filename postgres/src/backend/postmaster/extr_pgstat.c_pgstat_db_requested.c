
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ InvalidOid ;
 scalar_t__ NIL ;
 scalar_t__ list_member_oid (scalar_t__,scalar_t__) ;
 scalar_t__ pending_write_requests ;

__attribute__((used)) static bool
pgstat_db_requested(Oid databaseid)
{






 if (databaseid == InvalidOid && pending_write_requests != NIL)
  return 1;


 if (list_member_oid(pending_write_requests, databaseid))
  return 1;

 return 0;
}
