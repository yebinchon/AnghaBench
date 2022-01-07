
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_slave {unsigned int bus; unsigned int cs; } ;
struct ar71xx_spi_slave {unsigned int mode; struct spi_slave slave; } ;


 int PRINTD (char*) ;
 struct ar71xx_spi_slave* malloc (int) ;

struct spi_slave *spi_setup_slave(unsigned int bus, unsigned int cs,
  unsigned int max_hz, unsigned int mode)
{
 struct ar71xx_spi_slave *ss;

 PRINTD("ar71xx_spi: spi_setup_slave");

 if ((bus != 0) || (cs > 2))
  return ((void*)0);

 ss = malloc(sizeof(struct ar71xx_spi_slave));
 if (!ss)
  return ((void*)0);

 ss->slave.bus = bus;
 ss->slave.cs = cs;
 ss->mode = mode;



 PRINTD(" ---> out\n");

 return &ss->slave;
}
