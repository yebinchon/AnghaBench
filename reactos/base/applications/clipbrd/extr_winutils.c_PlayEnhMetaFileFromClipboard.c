
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int HENHMETAFILE ;
typedef int HDC ;


 int CF_ENHMETAFILE ;
 int GetClipboardData (int ) ;
 int PlayEnhMetaFile (int ,int ,int const*) ;

void PlayEnhMetaFileFromClipboard(HDC hdc, const RECT *lpRect)
{
    HENHMETAFILE hEmf;

    hEmf = GetClipboardData(CF_ENHMETAFILE);
    PlayEnhMetaFile(hdc, hEmf, lpRect);
}
