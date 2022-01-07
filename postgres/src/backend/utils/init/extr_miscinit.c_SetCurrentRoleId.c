
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int OidIsValid (int ) ;
 int PGC_INTERNAL ;
 int PGC_S_OVERRIDE ;
 int SessionUserId ;
 int SessionUserIsSuperuser ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int SetOuterUserId (int ) ;
 int SetRoleIsActive ;

void
SetCurrentRoleId(Oid roleid, bool is_superuser)
{







 if (!OidIsValid(roleid))
 {
  if (!OidIsValid(SessionUserId))
   return;

  roleid = SessionUserId;
  is_superuser = SessionUserIsSuperuser;

  SetRoleIsActive = 0;
 }
 else
  SetRoleIsActive = 1;

 SetOuterUserId(roleid);

 SetConfigOption("is_superuser",
     is_superuser ? "on" : "off",
     PGC_INTERNAL, PGC_S_OVERRIDE);
}
