
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;


 char* getObjectIdentityParts (int const*,int *,int *) ;

char *
getObjectIdentity(const ObjectAddress *object)
{
 return getObjectIdentityParts(object, ((void*)0), ((void*)0));
}
