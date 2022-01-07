
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ECPGget_var (int) ;

void *
ECPG_informix_get_var(int number)
{
 return ECPGget_var(number);
}
