
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIGH_ADDR_SHIFT ;
 int rand () ;

__attribute__((used)) static char *hind_addr(void)
{
 int bits = HIGH_ADDR_SHIFT + rand() % (63 - HIGH_ADDR_SHIFT);

 return (char *) (1UL << bits);
}
