
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hMF; int mm; } ;
struct TYPE_4__ {int top; int left; int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPMETAFILEPICT ;
typedef int HGLOBAL ;
typedef int HDC ;


 int CF_METAFILEPICT ;
 int GetClipboardData (int ) ;
 scalar_t__ GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int PlayMetaFile (int ,int ) ;
 int SetMapMode (int ,int ) ;
 int SetViewportExtEx (int ,int ,int ,int *) ;
 int SetViewportOrgEx (int ,int ,int ,int *) ;

void PlayMetaFileFromClipboard(HDC hdc, const RECT *lpRect)
{
    LPMETAFILEPICT mp;
    HGLOBAL hGlobal;

    hGlobal = GetClipboardData(CF_METAFILEPICT);
    if (!hGlobal)
        return;

    mp = (LPMETAFILEPICT)GlobalLock(hGlobal);
    if (!mp)
        return;

    SetMapMode(hdc, mp->mm);
    SetViewportExtEx(hdc, lpRect->right, lpRect->bottom, ((void*)0));
    SetViewportOrgEx(hdc, lpRect->left, lpRect->top, ((void*)0));
    PlayMetaFile(hdc, mp->hMF);
    GlobalUnlock(hGlobal);
}
