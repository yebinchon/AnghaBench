
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECPGset_noind_null (int,char*) ;

int
rsetnull(int t, char *ptr)
{
 ECPGset_noind_null(t, ptr);
 return 0;
}
