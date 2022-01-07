
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECURITY_NOFORCE_RLS ;
 int SecurityRestrictionContext ;

bool
InNoForceRLSOperation(void)
{
 return (SecurityRestrictionContext & SECURITY_NOFORCE_RLS) != 0;
}
