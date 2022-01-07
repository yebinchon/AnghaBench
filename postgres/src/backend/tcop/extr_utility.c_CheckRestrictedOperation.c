
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ InSecurityRestrictedOperation () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
CheckRestrictedOperation(const char *cmdname)
{
 if (InSecurityRestrictedOperation())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),

     errmsg("cannot execute %s within security-restricted operation",
      cmdname)));
}
