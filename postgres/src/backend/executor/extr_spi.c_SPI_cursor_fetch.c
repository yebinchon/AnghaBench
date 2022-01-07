
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;


 int CreateDestReceiver (int ) ;
 int DestSPI ;
 int FETCH_BACKWARD ;
 int FETCH_FORWARD ;
 int _SPI_cursor_operation (int ,int ,long,int ) ;

void
SPI_cursor_fetch(Portal portal, bool forward, long count)
{
 _SPI_cursor_operation(portal,
        forward ? FETCH_FORWARD : FETCH_BACKWARD, count,
        CreateDestReceiver(DestSPI));

}
