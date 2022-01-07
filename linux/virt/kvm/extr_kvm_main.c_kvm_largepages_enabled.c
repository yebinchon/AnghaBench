
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int largepages_enabled ;

bool kvm_largepages_enabled(void)
{
 return largepages_enabled;
}
