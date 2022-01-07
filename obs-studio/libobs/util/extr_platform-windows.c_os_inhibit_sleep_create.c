
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_inhibit_info {int dummy; } ;
typedef int os_inhibit_t ;


 int UNUSED_PARAMETER (char const*) ;
 int * bzalloc (int) ;

os_inhibit_t *os_inhibit_sleep_create(const char *reason)
{
 UNUSED_PARAMETER(reason);
 return bzalloc(sizeof(struct os_inhibit_info));
}
