
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Self; } ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef TYPE_1__ IPADDRESS_INFO ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int IPADDRESS_Draw (TYPE_1__ const*,int ) ;
 int TRACE (char*) ;

__attribute__((used)) static LRESULT IPADDRESS_Paint (const IPADDRESS_INFO *infoPtr, HDC hdc)
{
    PAINTSTRUCT ps;

    TRACE("\n");

    if (hdc) return IPADDRESS_Draw (infoPtr, hdc);

    hdc = BeginPaint (infoPtr->Self, &ps);
    IPADDRESS_Draw (infoPtr, hdc);
    EndPaint (infoPtr->Self, &ps);
    return 0;
}
