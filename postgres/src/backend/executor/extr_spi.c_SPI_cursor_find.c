
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;


 int GetPortalByName (char const*) ;

Portal
SPI_cursor_find(const char *name)
{
 return GetPortalByName(name);
}
