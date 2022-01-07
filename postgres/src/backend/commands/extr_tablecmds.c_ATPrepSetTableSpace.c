
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ newTableSpace; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;
typedef TYPE_1__ AlteredTableInfo ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ MyDatabaseTableSpace ;
 int OBJECT_TABLESPACE ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ get_tablespace_oid (char const*,int) ;
 scalar_t__ pg_tablespace_aclcheck (scalar_t__,int ,int ) ;

__attribute__((used)) static void
ATPrepSetTableSpace(AlteredTableInfo *tab, Relation rel, const char *tablespacename, LOCKMODE lockmode)
{
 Oid tablespaceId;


 tablespaceId = get_tablespace_oid(tablespacename, 0);


 if (OidIsValid(tablespaceId) && tablespaceId != MyDatabaseTableSpace)
 {
  AclResult aclresult;

  aclresult = pg_tablespace_aclcheck(tablespaceId, GetUserId(), ACL_CREATE);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, OBJECT_TABLESPACE, tablespacename);
 }


 if (OidIsValid(tab->newTableSpace))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("cannot have multiple SET TABLESPACE subcommands")));

 tab->newTableSpace = tablespaceId;
}
