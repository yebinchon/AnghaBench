
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tvis ;
struct TYPE_5__ {void* hItem; scalar_t__ pszText; int mask; } ;
struct TYPE_6__ {TYPE_1__ itemex; void* hInsertAfter; void* hParent; } ;
typedef TYPE_2__ TVINSERTSTRUCTW ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int HWND ;
typedef void* HTREEITEM ;


 int SecureZeroMemory (TYPE_2__*,int) ;
 int TVIF_TEXT ;
 void* TreeView_InsertItem (int ,TYPE_2__*) ;

HTREEITEM
InsertItem(HWND hTree,
           LPCWSTR szName,
           HTREEITEM hParent,
           HTREEITEM hInsertAfter)
{
    TVINSERTSTRUCTW tvis;
    SecureZeroMemory(&tvis, sizeof(tvis));

    tvis.hParent = hParent;
    tvis.hInsertAfter = hInsertAfter;
    tvis.itemex.mask = TVIF_TEXT;
    tvis.itemex.pszText = (LPWSTR)szName;

    return (tvis.itemex.hItem = TreeView_InsertItem(hTree, &tvis));
}
