
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int * pszText; } ;
struct TYPE_10__ {scalar_t__ notifyFormat; int hwndNotify; } ;
struct TYPE_7__ {int idFrom; int code; } ;
struct TYPE_9__ {TYPE_2__* pitem; TYPE_1__ hdr; } ;
struct TYPE_8__ {int mask; scalar_t__ type; scalar_t__ pvFilter; int * pszText; } ;
typedef int NMHEADERW ;
typedef TYPE_3__ NMHEADERA ;
typedef int LRESULT ;
typedef void* LPSTR ;
typedef int * LPCWSTR ;
typedef int LPARAM ;
typedef TYPE_4__ LISTVIEW_INFO ;
typedef TYPE_5__ HD_TEXTFILTERA ;


 int Free (int *) ;
 scalar_t__ HDFT_ISSTRING ;
 int HDI_FILTER ;
 int HDI_TEXT ;
 scalar_t__ NFR_UNICODE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int Str_SetPtrWtoA (int **,int *) ;
 int WM_NOTIFY ;
 int get_ansi_notification (int ) ;

__attribute__((used)) static LRESULT notify_forward_header(const LISTVIEW_INFO *infoPtr, NMHEADERW *lpnmhW)
{
    LPCWSTR text = ((void*)0), filter = ((void*)0);
    LRESULT ret;
    NMHEADERA *lpnmh = (NMHEADERA*) lpnmhW;


    if (infoPtr->notifyFormat == NFR_UNICODE)
        return SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, lpnmh->hdr.idFrom,
                            (LPARAM)lpnmh);



    if (lpnmh->pitem)
    {

        if (lpnmh->pitem->mask & HDI_TEXT)
        {
            text = (LPCWSTR)lpnmh->pitem->pszText;
            lpnmh->pitem->pszText = ((void*)0);
            Str_SetPtrWtoA(&lpnmh->pitem->pszText, text);
        }

        if ((lpnmh->pitem->mask & HDI_FILTER) && (lpnmh->pitem->type == HDFT_ISSTRING) &&
             lpnmh->pitem->pvFilter)
        {
            filter = (LPCWSTR)((HD_TEXTFILTERA*)lpnmh->pitem->pvFilter)->pszText;
            ((HD_TEXTFILTERA*)lpnmh->pitem->pvFilter)->pszText = ((void*)0);
            Str_SetPtrWtoA(&((HD_TEXTFILTERA*)lpnmh->pitem->pvFilter)->pszText, filter);
        }
    }
    lpnmh->hdr.code = get_ansi_notification(lpnmh->hdr.code);

    ret = SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, lpnmh->hdr.idFrom,
                       (LPARAM)lpnmh);


    if(text)
    {
        Free(lpnmh->pitem->pszText);
        lpnmh->pitem->pszText = (LPSTR)text;
    }
    if(filter)
    {
        Free(((HD_TEXTFILTERA*)lpnmh->pitem->pvFilter)->pszText);
        ((HD_TEXTFILTERA*)lpnmh->pitem->pvFilter)->pszText = (LPSTR)filter;
    }

    return ret;
}
