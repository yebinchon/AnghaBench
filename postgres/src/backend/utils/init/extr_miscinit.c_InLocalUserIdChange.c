
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SecurityRestrictionContext ;

bool
InLocalUserIdChange(void)
{
 return (SecurityRestrictionContext & SECURITY_LOCAL_USERID_CHANGE) != 0;
}
