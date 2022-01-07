
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_USAGE ;
 scalar_t__ GetUserId () ;
 int OBJECT_FOREIGN_SERVER ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 scalar_t__ pg_foreign_server_aclcheck (scalar_t__,scalar_t__,int ) ;
 int pg_foreign_server_ownercheck (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
user_mapping_ddl_aclcheck(Oid umuserid, Oid serverid, const char *servername)
{
 Oid curuserid = GetUserId();

 if (!pg_foreign_server_ownercheck(serverid, curuserid))
 {
  if (umuserid == curuserid)
  {
   AclResult aclresult;

   aclresult = pg_foreign_server_aclcheck(serverid, curuserid, ACL_USAGE);
   if (aclresult != ACLCHECK_OK)
    aclcheck_error(aclresult, OBJECT_FOREIGN_SERVER, servername);
  }
  else
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_FOREIGN_SERVER,
         servername);
 }
}
