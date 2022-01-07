
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fd_t ;


 int CC3100_disable () ;

Fd_t spi_Open(char *ifName, unsigned long flags) {
  CC3100_disable();

  return 0;
}
