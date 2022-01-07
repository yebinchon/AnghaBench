
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int GetUserId () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int has_rolreplication (int ) ;
 int superuser () ;

__attribute__((used)) static void
check_permissions(void)
{
 if (!superuser() && !has_rolreplication(GetUserId()))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     (errmsg("must be superuser or replication role to use replication slots"))));
}
