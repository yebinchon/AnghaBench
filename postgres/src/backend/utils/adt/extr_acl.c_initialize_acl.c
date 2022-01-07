
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int AUTHMEMROLEMEM ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int IsBootstrapProcessingMode () ;
 int RoleMembershipCacheCallback ;

void
initialize_acl(void)
{
 if (!IsBootstrapProcessingMode())
 {




  CacheRegisterSyscacheCallback(AUTHMEMROLEMEM,
           RoleMembershipCacheCallback,
           (Datum) 0);
 }
}
