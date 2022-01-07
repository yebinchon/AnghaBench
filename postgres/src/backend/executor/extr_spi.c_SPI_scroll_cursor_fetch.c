
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;
typedef int FetchDirection ;


 int CreateDestReceiver (int ) ;
 int DestSPI ;
 int _SPI_cursor_operation (int ,int ,long,int ) ;

void
SPI_scroll_cursor_fetch(Portal portal, FetchDirection direction, long count)
{
 _SPI_cursor_operation(portal,
        direction, count,
        CreateDestReceiver(DestSPI));

}
