
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int croak (char*) ;
 scalar_t__ plperl_ending ;

__attribute__((used)) static void
check_spi_usage_allowed(void)
{

 if (plperl_ending)
 {

  croak("SPI functions can not be used in END blocks");
 }
}
