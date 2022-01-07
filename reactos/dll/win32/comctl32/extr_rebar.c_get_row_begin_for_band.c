
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iRow; } ;
typedef int REBAR_INFO ;
typedef int INT ;


 TYPE_1__* REBAR_GetBand (int const*,int) ;
 int prev_visible (int const*,int) ;

__attribute__((used)) static int get_row_begin_for_band(const REBAR_INFO *infoPtr, INT iBand)
{
    int iLastBand = iBand;
    int iRow = REBAR_GetBand(infoPtr, iBand)->iRow;
    while ((iBand = prev_visible(infoPtr, iBand)) >= 0) {
        if (REBAR_GetBand(infoPtr, iBand)->iRow != iRow)
            break;
        else
            iLastBand = iBand;
    }
    return iLastBand;
}
