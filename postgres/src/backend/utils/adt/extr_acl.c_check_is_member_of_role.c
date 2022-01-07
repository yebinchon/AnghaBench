
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int GetUserNameFromId (int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int is_member_of_role (int ,int ) ;

void
check_is_member_of_role(Oid member, Oid role)
{
 if (!is_member_of_role(member, role))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be member of role \"%s\"",
      GetUserNameFromId(role, 0))));
}
