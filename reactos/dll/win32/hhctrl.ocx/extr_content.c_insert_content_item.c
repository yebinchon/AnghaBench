
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tvis ;
struct TYPE_11__ {scalar_t__ id; scalar_t__ child; int name; } ;
struct TYPE_8__ {int mask; void* iSelectedImage; void* iImage; scalar_t__ lParam; int pszText; scalar_t__ cchTextMax; } ;
struct TYPE_9__ {TYPE_1__ item; } ;
struct TYPE_10__ {int hInsertAfter; scalar_t__ hParent; TYPE_2__ u; } ;
typedef TYPE_3__ TVINSERTSTRUCTW ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;
typedef TYPE_4__ ContentItem ;


 void* HHTV_DOCUMENT ;
 void* HHTV_FOLDER ;
 scalar_t__ SendMessageW (int ,int ,int ,scalar_t__) ;
 int TVIF_IMAGE ;
 int TVIF_PARAM ;
 int TVIF_SELECTEDIMAGE ;
 int TVIF_TEXT ;
 int TVI_LAST ;
 int TVM_INSERTITEMW ;
 scalar_t__ lstrlenW (int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void insert_content_item(HWND hwnd, ContentItem *parent, ContentItem *item)
{
    TVINSERTSTRUCTW tvis;

    memset(&tvis, 0, sizeof(tvis));
    tvis.u.item.mask = TVIF_TEXT|TVIF_PARAM|TVIF_IMAGE|TVIF_SELECTEDIMAGE;
    tvis.u.item.cchTextMax = lstrlenW(item->name)+1;
    tvis.u.item.pszText = item->name;
    tvis.u.item.lParam = (LPARAM)item;
    tvis.u.item.iImage = item->child ? HHTV_FOLDER : HHTV_DOCUMENT;
    tvis.u.item.iSelectedImage = item->child ? HHTV_FOLDER : HHTV_DOCUMENT;
    tvis.hParent = parent ? parent->id : 0;
    tvis.hInsertAfter = TVI_LAST;

    item->id = (HTREEITEM)SendMessageW(hwnd, TVM_INSERTITEMW, 0, (LPARAM)&tvis);
}
