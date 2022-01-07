
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PKEY_DISABLE_ACCESS ;
 int pkey_disable_clear (int,int ) ;

void pkey_access_allow(int pkey)
{
 pkey_disable_clear(pkey, PKEY_DISABLE_ACCESS);
}
