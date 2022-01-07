
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TREEVIEW_INFO ;
typedef int HTREEITEM ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int ) ;
 int TREEVIEW_GetItemIndex (int const*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
TREEVIEW_ValidItem(const TREEVIEW_INFO *infoPtr, HTREEITEM handle)
{
    if (TREEVIEW_GetItemIndex(infoPtr, handle) == -1)
    {
 TRACE("invalid item %p\n", handle);
 return FALSE;
    }
    else
 return TRUE;
}
