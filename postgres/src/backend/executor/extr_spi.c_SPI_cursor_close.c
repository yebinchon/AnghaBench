
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;


 int ERROR ;
 int PortalDrop (int ,int) ;
 int PortalIsValid (int ) ;
 int elog (int ,char*) ;

void
SPI_cursor_close(Portal portal)
{
 if (!PortalIsValid(portal))
  elog(ERROR, "invalid portal in SPI cursor operation");

 PortalDrop(portal, 0);
}
