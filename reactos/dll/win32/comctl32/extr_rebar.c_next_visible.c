
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int uNumBands; } ;
typedef TYPE_1__ REBAR_INFO ;


 int HIDDENBAND (int ) ;
 int REBAR_GetBand (TYPE_1__ const*,unsigned int) ;

__attribute__((used)) static int next_visible(const REBAR_INFO *infoPtr, int i)
{
    unsigned int n;
    for (n = i + 1; n < infoPtr->uNumBands; n++)
        if (!HIDDENBAND(REBAR_GetBand(infoPtr, n)))
            break;
    return n;
}
