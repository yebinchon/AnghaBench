
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPRECT ;
typedef int HDC ;
typedef int COLOR_SCHEME ;
typedef int BOOL ;





 int FALSE ;
 int MyDrawFrameButton (int ,int ,int,int *) ;
 int MyDrawFrameCaption (int ,int ,int,int *) ;
 int MyDrawFrameScroll (int ,int ,int,int *) ;

BOOL
MyDrawFrameControl(HDC hDC, LPRECT rc, UINT uType, UINT uState, COLOR_SCHEME *scheme)
{
    switch(uType)
    {
    case 130:
        return MyDrawFrameButton(hDC, rc, uState, scheme);
    case 129:
        return MyDrawFrameCaption(hDC, rc, uState, scheme);
    case 128:
        return MyDrawFrameScroll(hDC, rc, uState, scheme);
    }
    return FALSE;
}
