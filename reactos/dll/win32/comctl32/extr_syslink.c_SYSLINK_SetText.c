
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Self; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int RECT ;
typedef int LRESULT ;
typedef scalar_t__* LPCWSTR ;
typedef int * HDC ;


 scalar_t__ GetClientRect (int ,int *) ;
 int * GetDC (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int ReleaseDC (int ,int *) ;
 int SYSLINK_ClearDoc (TYPE_1__*) ;
 scalar_t__ SYSLINK_ParseText (TYPE_1__*,scalar_t__*) ;
 int SYSLINK_Render (TYPE_1__*,int *,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT SYSLINK_SetText (SYSLINK_INFO *infoPtr, LPCWSTR Text)
{

    SYSLINK_ClearDoc(infoPtr);

    if(Text == ((void*)0) || *Text == 0)
    {
        return TRUE;
    }


    if(SYSLINK_ParseText(infoPtr, Text) > 0)
    {
        RECT rcClient;


        if (GetClientRect(infoPtr->Self, &rcClient))
        {
            HDC hdc = GetDC(infoPtr->Self);
            if (hdc != ((void*)0))
            {
                SYSLINK_Render(infoPtr, hdc, &rcClient);
                ReleaseDC(infoPtr->Self, hdc);

                InvalidateRect(infoPtr->Self, ((void*)0), TRUE);
            }
        }
    }

    return TRUE;
}
