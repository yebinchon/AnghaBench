
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECPGset_var (int,void*,int) ;

void
ECPG_informix_set_var(int number, void *pointer, int lineno)
{
 ECPGset_var(number, pointer, lineno);
}
