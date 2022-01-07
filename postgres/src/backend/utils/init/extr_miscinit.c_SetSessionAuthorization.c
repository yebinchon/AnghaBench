
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int AssertState (int ) ;
 scalar_t__ AuthenticatedUserId ;
 int AuthenticatedUserIsSuperuser ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int OidIsValid (scalar_t__) ;
 int PGC_INTERNAL ;
 int PGC_S_OVERRIDE ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int SetSessionUserId (scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
SetSessionAuthorization(Oid userid, bool is_superuser)
{

 AssertState(OidIsValid(AuthenticatedUserId));

 if (userid != AuthenticatedUserId &&
  !AuthenticatedUserIsSuperuser)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to set session authorization")));

 SetSessionUserId(userid, is_superuser);

 SetConfigOption("is_superuser",
     is_superuser ? "on" : "off",
     PGC_INTERNAL, PGC_S_OVERRIDE);
}
