
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int file ;
 int tcc_peekc_slow (int ) ;

int handle_eob(void)
{
 return tcc_peekc_slow (file);
}
