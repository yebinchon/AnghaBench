
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECURITY_RESTRICTED_OPERATION ;
 int SecurityRestrictionContext ;

bool
InSecurityRestrictedOperation(void)
{
 return (SecurityRestrictionContext & SECURITY_RESTRICTED_OPERATION) != 0;
}
