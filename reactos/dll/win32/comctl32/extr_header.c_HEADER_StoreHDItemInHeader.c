
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_6__ {scalar_t__ iImage; int const* pszText; int cxy; int lParam; int fmt; int hbm; } ;
struct TYPE_5__ {scalar_t__ iImage; int callbackMask; int * pszText; int cxy; int lParam; int fmt; int hbm; } ;
typedef int const* LPCWSTR ;
typedef int LPCSTR ;
typedef TYPE_1__ HEADER_ITEM ;
typedef TYPE_2__ HDITEMW ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,int) ;
 int HDI_BITMAP ;
 int HDI_FORMAT ;
 int HDI_IMAGE ;
 int HDI_LPARAM ;
 int HDI_TEXT ;
 int HDI_UNSUPPORTED_FIELDS ;
 int HDI_WIDTH ;
 scalar_t__ I_IMAGECALLBACK ;
 int const* LPSTR_TEXTCALLBACKW ;
 int Str_SetPtrAtoW (int **,int ) ;
 int Str_SetPtrW (int **,int const*) ;
 int heap_free (int *) ;

__attribute__((used)) static void HEADER_StoreHDItemInHeader(HEADER_ITEM *lpItem, UINT mask, const HDITEMW *phdi, BOOL fUnicode)
{
    if (mask & HDI_UNSUPPORTED_FIELDS)
        FIXME("unsupported header fields %x\n", (mask & HDI_UNSUPPORTED_FIELDS));

    if (mask & HDI_BITMAP)
        lpItem->hbm = phdi->hbm;

    if (mask & HDI_FORMAT)
        lpItem->fmt = phdi->fmt;

    if (mask & HDI_LPARAM)
        lpItem->lParam = phdi->lParam;

    if (mask & HDI_WIDTH)
        lpItem->cxy = phdi->cxy;

    if (mask & HDI_IMAGE)
    {
        lpItem->iImage = phdi->iImage;
        if (phdi->iImage == I_IMAGECALLBACK)
            lpItem->callbackMask |= HDI_IMAGE;
        else
            lpItem->callbackMask &= ~HDI_IMAGE;
    }

    if (mask & HDI_TEXT)
    {
        heap_free(lpItem->pszText);
        lpItem->pszText = ((void*)0);

        if (phdi->pszText != LPSTR_TEXTCALLBACKW)
        {
            static const WCHAR emptyString[] = {0};

            LPCWSTR pszText = (phdi->pszText != ((void*)0) ? phdi->pszText : emptyString);
            if (fUnicode)
                Str_SetPtrW(&lpItem->pszText, pszText);
            else
                Str_SetPtrAtoW(&lpItem->pszText, (LPCSTR)pszText);
            lpItem->callbackMask &= ~HDI_TEXT;
        }
        else
        {
            lpItem->pszText = ((void*)0);
            lpItem->callbackMask |= HDI_TEXT;
        }
    }
}
