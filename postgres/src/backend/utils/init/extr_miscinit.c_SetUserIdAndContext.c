
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CurrentUserId ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ InSecurityRestrictedOperation () ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SecurityRestrictionContext ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;

void
SetUserIdAndContext(Oid userid, bool sec_def_context)
{

 if (InSecurityRestrictedOperation())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("cannot set parameter \"%s\" within security-restricted operation",
      "role")));
 CurrentUserId = userid;
 if (sec_def_context)
  SecurityRestrictionContext |= SECURITY_LOCAL_USERID_CHANGE;
 else
  SecurityRestrictionContext &= ~SECURITY_LOCAL_USERID_CHANGE;
}
