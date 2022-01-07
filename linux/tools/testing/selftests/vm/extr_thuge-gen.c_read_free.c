
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long getpagesize () ;
 unsigned long read_sysfs (int,char*,unsigned long) ;

unsigned long read_free(unsigned long ps)
{
 return read_sysfs(ps != getpagesize(),
   "/sys/kernel/mm/hugepages/hugepages-%lukB/free_hugepages",
   ps >> 10);
}
