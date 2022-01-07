
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ HIMAGELIST ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int ImageList_Destroy (scalar_t__) ;
 int TVSIL_NORMAL ;
 scalar_t__ TreeView_GetImageList (int ,int ) ;
 scalar_t__ pathBuffer ;

void DestroyTreeView(HWND hwndTV)
{
    HIMAGELIST himl;

    if (pathBuffer) HeapFree(GetProcessHeap(), 0, pathBuffer);


    himl = TreeView_GetImageList(hwndTV, TVSIL_NORMAL);
    if (himl) ImageList_Destroy(himl);
}
