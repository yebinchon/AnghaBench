
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Portal ;


 int SPI_cursor_close (scalar_t__) ;
 scalar_t__ SPI_cursor_find (char*) ;
 int UnpinPortal (scalar_t__) ;
 int check_spi_usage_allowed () ;

void
plperl_spi_cursor_close(char *cursor)
{
 Portal p;

 check_spi_usage_allowed();

 p = SPI_cursor_find(cursor);

 if (p)
 {
  UnpinPortal(p);
  SPI_cursor_close(p);
 }
}
