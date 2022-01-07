
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int uLinesToScroll; } ;
typedef TYPE_1__* LPSCROLLSTATE ;


 int SPI_GETWHEELSCROLLLINES ;
 int SystemParametersInfo (int ,int ,int*,int ) ;

void UpdateLinesToScroll(LPSCROLLSTATE state)
{
    UINT uLinesToScroll;

    if (!SystemParametersInfo(SPI_GETWHEELSCROLLLINES, 0, &uLinesToScroll, 0))
    {

        state->uLinesToScroll = 3;
    }
    else
    {
        state->uLinesToScroll = uLinesToScroll;
    }
}
