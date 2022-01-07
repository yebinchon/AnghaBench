
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int HTREEITEM ;


 int TreeView_GetRoot (int ) ;

HTREEITEM TreeView_GetFirst(HWND hTree)
{
    return TreeView_GetRoot(hTree);
}
