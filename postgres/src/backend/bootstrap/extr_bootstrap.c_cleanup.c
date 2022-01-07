
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * boot_reldesc ;
 int closerel (int *) ;

__attribute__((used)) static void
cleanup(void)
{
 if (boot_reldesc != ((void*)0))
  closerel(((void*)0));
}
