
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;
typedef int AclResult ;





 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int aclcheck_error (int,int ,char const*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*) ;

void
aclcheck_error_col(AclResult aclerr, ObjectType objtype,
       const char *objectname, const char *colname)
{
 switch (aclerr)
 {
  case 128:

   break;
  case 129:
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied for column \"%s\" of relation \"%s\"",
       colname, objectname)));
   break;
  case 130:

   aclcheck_error(aclerr, objtype, objectname);
   break;
  default:
   elog(ERROR, "unrecognized AclResult: %d", (int) aclerr);
   break;
 }
}
