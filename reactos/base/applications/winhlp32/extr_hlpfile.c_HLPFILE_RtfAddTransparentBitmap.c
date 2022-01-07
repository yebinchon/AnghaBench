
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct RtfData {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int biHeight; int biWidth; } ;
struct TYPE_7__ {TYPE_4__ bmiHeader; TYPE_1__* bmiColors; } ;
struct TYPE_6__ {int rgbRed; int rgbGreen; int rgbBlue; } ;
typedef int HENHMETAFILE ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int BOOL ;
typedef TYPE_2__ BITMAPINFO ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CBM_INIT ;
 int CloseEnhMetaFile (int ) ;
 int CreateBitmap (int ,int ,int,int,int *) ;
 int CreateCompatibleDC (int ) ;
 int CreateDIBitmap (int ,TYPE_4__*,int ,void const*,TYPE_2__ const*,int ) ;
 int CreateEnhMetaFileW (int *,int *,int *,int *) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteEnhMetaFile (int ) ;
 int DeleteObject (int ) ;
 int FALSE ;
 int GetDC (int ) ;
 scalar_t__ GetEnhMetaFileBits (int ,scalar_t__,void*) ;
 int GetProcessHeap () ;
 scalar_t__ HLPFILE_RtfAddControl (struct RtfData*,char*) ;
 scalar_t__ HLPFILE_RtfAddHexBytes (struct RtfData*,void*,scalar_t__) ;
 void* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,void*) ;
 int RGB (int,int,int) ;
 int ReleaseDC (int ,int ) ;
 int SRCAND ;
 int SRCCOPY ;
 int SRCPAINT ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddTransparentBitmap(struct RtfData* rd, const BITMAPINFO* bi,
                                            const void* pict, unsigned nc)
{
    HDC hdc, hdcMask, hdcMem, hdcEMF;
    HBITMAP hbm, hbmMask, hbmOldMask, hbmOldMem;
    HENHMETAFILE hEMF;
    BOOL ret = FALSE;
    void* data;
    UINT sz;

    hbm = CreateDIBitmap(hdc = GetDC(0), &bi->bmiHeader,
                         CBM_INIT, pict, bi, DIB_RGB_COLORS);

    hdcMem = CreateCompatibleDC(hdc);
    hbmOldMem = SelectObject(hdcMem, hbm);


    hdcMask = CreateCompatibleDC(hdc);
    hbmMask = CreateBitmap(bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, 1, 1, ((void*)0));
    hbmOldMask = SelectObject(hdcMask, hbmMask);
    SetBkColor(hdcMem,
               RGB(bi->bmiColors[nc - 1].rgbRed,
                   bi->bmiColors[nc - 1].rgbGreen,
                   bi->bmiColors[nc - 1].rgbBlue));
    BitBlt(hdcMask, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMem, 0, 0, SRCCOPY);


    SetBkColor(hdcMem, RGB(0,0,0));
    SetTextColor(hdcMem, RGB(255,255,255));
    BitBlt(hdcMem, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMask, 0, 0, SRCAND);

    SelectObject(hdcMask, hbmOldMask);
    DeleteDC(hdcMask);

    SelectObject(hdcMem, hbmOldMem);
    DeleteDC(hdcMem);


    hdcEMF = CreateEnhMetaFileW(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    hdcMem = CreateCompatibleDC(hdcEMF);


    hbmOldMem = SelectObject(hdcMem, hbmMask);
    SetBkColor(hdcEMF, RGB(255, 255, 255));
    SetTextColor(hdcEMF, RGB(0, 0, 0));
    BitBlt(hdcEMF, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMem, 0, 0, SRCAND);


    SelectObject(hdcMem, hbm);
    BitBlt(hdcEMF, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMem, 0, 0, SRCPAINT);
    SelectObject(hdcMem, hbmOldMem);
    DeleteDC(hdcMem);


    ReleaseDC(0, hdc);
    DeleteObject(hbmMask);
    DeleteObject(hbm);

    hEMF = CloseEnhMetaFile(hdcEMF);


    sz = GetEnhMetaFileBits(hEMF, 0, ((void*)0));
    if (sz && (data = HeapAlloc(GetProcessHeap(), 0, sz)))
    {
        if (sz == GetEnhMetaFileBits(hEMF, sz, data))
        {
            ret = HLPFILE_RtfAddControl(rd, "{\\pict\\emfblip") &&
                HLPFILE_RtfAddHexBytes(rd, data, sz) &&
                HLPFILE_RtfAddControl(rd, "}");
        }
        HeapFree(GetProcessHeap(), 0, data);
    }
    DeleteEnhMetaFile(hEMF);

    return ret;
}
