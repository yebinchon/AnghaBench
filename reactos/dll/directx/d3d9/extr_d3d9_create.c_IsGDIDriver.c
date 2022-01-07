
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef scalar_t__ COLORREF ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetNearestColor (int ,scalar_t__) ;
 scalar_t__ RGB (int,int,int) ;
 int TRUE ;

__attribute__((used)) static BOOL IsGDIDriver(HDC hDC)
{
    COLORREF NearestBlack = GetNearestColor(hDC, RGB(0, 0, 0));
    COLORREF NearestWhite = GetNearestColor(hDC, RGB(255, 255, 255));

    if (NearestBlack != RGB(0, 0, 0) || NearestWhite != RGB(255, 255, 255))
        return TRUE;

    return FALSE;
}
