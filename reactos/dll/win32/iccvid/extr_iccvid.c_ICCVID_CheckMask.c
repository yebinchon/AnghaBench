
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rgbBlue; int rgbGreen; int rgbRed; } ;
typedef TYPE_1__ RGBQUAD ;
typedef scalar_t__ COLORREF ;


 int FALSE ;
 scalar_t__ MAKECOLOUR32 (int ,int ,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static inline int ICCVID_CheckMask(RGBQUAD bmiColors[3], COLORREF redMask, COLORREF blueMask, COLORREF greenMask)
{
    COLORREF realRedMask = MAKECOLOUR32(bmiColors[0].rgbRed, bmiColors[0].rgbGreen, bmiColors[0].rgbBlue);
    COLORREF realBlueMask = MAKECOLOUR32(bmiColors[1].rgbRed, bmiColors[1].rgbGreen, bmiColors[1].rgbBlue);
    COLORREF realGreenMask = MAKECOLOUR32(bmiColors[2].rgbRed, bmiColors[2].rgbGreen, bmiColors[2].rgbBlue);

    TRACE("\nbmiColors[0] = 0x%08x\nbmiColors[1] = 0x%08x\nbmiColors[2] = 0x%08x\n",
        realRedMask, realBlueMask, realGreenMask);

    if ((realRedMask == redMask) &&
        (realBlueMask == blueMask) &&
        (realGreenMask == greenMask))
        return TRUE;
    return FALSE;
}
