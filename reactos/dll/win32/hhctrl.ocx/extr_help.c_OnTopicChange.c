
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int lvi ;
typedef int WCHAR ;
struct TYPE_15__ {int * chm_file; } ;
struct TYPE_23__ {struct TYPE_23__* parent; TYPE_1__ merge; int * local; int * name; } ;
struct TYPE_16__ {int hwndPopup; int hwndList; } ;
struct TYPE_22__ {int current_tab; TYPE_13__* pCHMInfo; TYPE_2__ popup; } ;
struct TYPE_17__ {int * chm_file; } ;
struct TYPE_21__ {int nItems; TYPE_3__ merge; TYPE_6__* items; int * keyword; } ;
struct TYPE_20__ {int * local; int * name; } ;
struct TYPE_19__ {int iItem; int mask; int lParam; int * pszText; int cchTextMax; } ;
struct TYPE_18__ {int * filename; } ;
struct TYPE_14__ {int * szFile; } ;
typedef TYPE_4__ SearchItem ;
typedef TYPE_5__ LVITEMW ;
typedef int LRESULT ;
typedef int * LPCWSTR ;
typedef int LPARAM ;
typedef TYPE_6__ IndexSubItem ;
typedef TYPE_7__ IndexItem ;
typedef TYPE_8__ HHInfo ;
typedef TYPE_9__ ContentItem ;


 int FIXME (char*) ;
 int * GetDocumentTitle (TYPE_13__*,int *) ;
 int LVIF_PARAM ;
 int LVIF_TEXT ;
 int LVM_DELETEALLITEMS ;
 int LVM_INSERTITEMW ;
 int NavigateToChm (TYPE_8__*,int *,int *) ;
 int SW_SHOW ;
 int SendMessageW (int ,int ,int ,int ) ;
 int ShowWindow (int ,int ) ;



 int TRACE (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int lstrlenW (int *) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static LRESULT OnTopicChange(HHInfo *info, void *user_data)
{
    LPCWSTR chmfile = ((void*)0), name = ((void*)0), local = ((void*)0);
    ContentItem *citer;
    SearchItem *siter;
    IndexItem *iiter;

    if(!user_data || !info)
        return 0;

    switch (info->current_tab)
    {
    case 130:
        citer = (ContentItem *) user_data;
        name = citer->name;
        local = citer->local;
        while(citer) {
            if(citer->merge.chm_file) {
                chmfile = citer->merge.chm_file;
                break;
            }
            citer = citer->parent;
        }
        break;
    case 129:
        iiter = (IndexItem *) user_data;
        if(iiter->nItems == 0) {
            FIXME("No entries for this item!\n");
            return 0;
        }
        if(iiter->nItems > 1) {
            int i = 0;
            LVITEMW lvi;

            SendMessageW(info->popup.hwndList, LVM_DELETEALLITEMS, 0, 0);
            for(i=0;i<iiter->nItems;i++) {
                IndexSubItem *item = &iiter->items[i];
                WCHAR *name = iiter->keyword;

                if(!item->name)
                    item->name = GetDocumentTitle(info->pCHMInfo, item->local);
                if(item->name)
                    name = item->name;
                memset(&lvi, 0, sizeof(lvi));
                lvi.iItem = i;
                lvi.mask = LVIF_TEXT|LVIF_PARAM;
                lvi.cchTextMax = lstrlenW(name)+1;
                lvi.pszText = name;
                lvi.lParam = (LPARAM) item;
                SendMessageW(info->popup.hwndList, LVM_INSERTITEMW, 0, (LPARAM)&lvi);
            }
            ShowWindow(info->popup.hwndPopup, SW_SHOW);
            return 0;
        }
        name = iiter->items[0].name;
        local = iiter->items[0].local;
        chmfile = iiter->merge.chm_file;
        break;
    case 128:
        siter = (SearchItem *) user_data;
        name = siter->filename;
        local = siter->filename;
        chmfile = info->pCHMInfo->szFile;
        break;
    default:
        FIXME("Unhandled operation for this tab!\n");
        return 0;
    }

    if(!chmfile)
    {
        FIXME("No help file found for this item!\n");
        return 0;
    }

    TRACE("name %s loal %s\n", debugstr_w(name), debugstr_w(local));

    NavigateToChm(info, chmfile, local);
    return 0;
}
