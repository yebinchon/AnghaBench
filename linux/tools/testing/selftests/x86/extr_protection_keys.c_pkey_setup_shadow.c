
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __rdpkru () ;
 int shadow_pkru ;

void pkey_setup_shadow(void)
{
 shadow_pkru = __rdpkru();
}
