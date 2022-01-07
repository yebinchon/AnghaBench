
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PKEY_DISABLE_WRITE ;
 int pkey_disable_set (int,int ) ;

void pkey_write_deny(int pkey)
{
 pkey_disable_set(pkey, PKEY_DISABLE_WRITE);
}
