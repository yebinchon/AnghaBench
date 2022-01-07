
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;
typedef int FetchDirection ;


 int None_Receiver ;
 int _SPI_cursor_operation (int ,int ,long,int ) ;

void
SPI_scroll_cursor_move(Portal portal, FetchDirection direction, long count)
{
 _SPI_cursor_operation(portal, direction, count, None_Receiver);
}
